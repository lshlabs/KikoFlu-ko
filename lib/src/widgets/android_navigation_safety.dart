import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/// Reserve status-bar and system navigation space once, above the Navigator, so pushed
/// screens, dialogs and bottom sheets receive the same usable bounds.
class AndroidNavigationSafeArea extends StatelessWidget {
  const AndroidNavigationSafeArea({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    if (defaultTargetPlatform != TargetPlatform.android) return child;
    return ColoredBox(
      color: Theme.of(context).scaffoldBackgroundColor,
      child: SafeArea(child: child),
    );
  }
}

/// Only the root screen owns exit confirmation. Routes pushed above it keep
/// their normal back behavior, including dismissing dialogs and keyboards.
class AndroidRootBackGuard extends StatefulWidget {
  const AndroidRootBackGuard({super.key, required this.child, this.onBack});

  final Widget child;
  final bool Function()? onBack;

  @override
  State<AndroidRootBackGuard> createState() => _AndroidRootBackGuardState();
}

class _AndroidRootBackGuardState extends State<AndroidRootBackGuard> {
  final Set<bool Function()> _handlers = {};
  bool _confirming = false;

  Future<void> _handleBack() async {
    if (_confirming || ModalRoute.of(context)?.isCurrent != true) return;
    for (final handler in _handlers.toList().reversed) {
      if (handler()) return;
    }
    if (widget.onBack?.call() == true) return;
    final navigator = Navigator.of(context);
    if (navigator.canPop()) {
      navigator.pop();
      return;
    }
    _confirming = true;
    try {
      final confirmed = await showDialog<bool>(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text('앱을 종료할까요?'),
          content: const Text('KikoFlu 화면을 닫습니다.'),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(false),
              child: const Text('취소'),
            ),
            TextButton(
              onPressed: () => Navigator.of(context).pop(true),
              child: const Text('종료'),
            ),
          ],
        ),
      );
      if (mounted && confirmed == true) await SystemNavigator.pop();
    } finally {
      _confirming = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    if (defaultTargetPlatform != TargetPlatform.android) return widget.child;
    return PopScope<Object?>(
      canPop: false,
      onPopInvokedWithResult: (didPop, result) {
        if (!didPop) _handleBack();
      },
      child: _RootBackScope(owner: this, child: widget.child),
    );
  }
}

class _RootBackScope extends InheritedWidget {
  const _RootBackScope({required this.owner, required super.child});

  final _AndroidRootBackGuardState owner;

  @override
  bool updateShouldNotify(_RootBackScope oldWidget) => owner != oldWidget.owner;
}

/// Gives active embedded tabs first refusal without registering competing
/// PopScopes on the same root route. Standalone screens still handle back.
class ScreenBackHandler extends StatefulWidget {
  const ScreenBackHandler({
    super.key,
    required this.enabled,
    required this.onBack,
    required this.child,
  });

  final bool enabled;
  final bool Function() onBack;
  final Widget child;

  @override
  State<ScreenBackHandler> createState() => _ScreenBackHandlerState();
}

class _ScreenBackHandlerState extends State<ScreenBackHandler> {
  _AndroidRootBackGuardState? _owner;

  bool _handleBack() => widget.enabled && widget.onBack();

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final owner = context
        .dependOnInheritedWidgetOfExactType<_RootBackScope>()
        ?.owner;
    if (_owner == owner) return;
    _owner?._handlers.remove(_handleBack);
    _owner = owner;
    _owner?._handlers.add(_handleBack);
  }

  @override
  void dispose() {
    _owner?._handlers.remove(_handleBack);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (_owner != null) return widget.child;
    return PopScope<Object?>(
      canPop: !widget.enabled,
      onPopInvokedWithResult: (didPop, result) {
        if (!didPop) _handleBack();
      },
      child: widget.child,
    );
  }
}
