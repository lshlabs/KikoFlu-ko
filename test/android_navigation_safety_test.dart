import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kikoeru_flutter/src/widgets/android_navigation_safety.dart';

void main() {
  testWidgets('changing tabs disables a retained folder handler', (
    tester,
  ) async {
    var active = true;
    var folderBacks = 0;
    var tabBacks = 0;
    StateSetter? rebuild;
    await tester.pumpWidget(
      MaterialApp(
        home: AndroidRootBackGuard(
          onBack: () {
            tabBacks++;
            return true;
          },
          child: StatefulBuilder(
            builder: (context, setState) {
              rebuild = setState;
              return ScreenBackHandler(
                enabled: active,
                onBack: () {
                  folderBacks++;
                  return true;
                },
                child: const Text('Retained folder'),
              );
            },
          ),
        ),
      ),
    );
    await tester.binding.handlePopRoute();
    await tester.pumpAndSettle();
    rebuild!(() => active = false);
    await tester.pumpAndSettle();
    await tester.binding.handlePopRoute();
    await tester.pumpAndSettle();
    expect(folderBacks, 1);
    expect(tabBacks, 1);
  });

  testWidgets('removing a folder handler unregisters its callback', (
    tester,
  ) async {
    var visible = true;
    var calls = 0;
    StateSetter? rebuild;
    await tester.pumpWidget(
      MaterialApp(
        home: AndroidRootBackGuard(
          child: StatefulBuilder(
            builder: (context, setState) {
              rebuild = setState;
              return visible
                  ? ScreenBackHandler(
                      enabled: true,
                      onBack: () {
                        calls++;
                        return true;
                      },
                      child: const Text('Folder'),
                    )
                  : const Text('Home');
            },
          ),
        ),
      ),
    );
    rebuild!(() => visible = false);
    await tester.pumpAndSettle();
    await tester.binding.handlePopRoute();
    await tester.pumpAndSettle();
    expect(calls, 0);
    expect(find.text('앱을 종료할까요?'), findsOneWidget);
    await tester.tap(find.text('취소'));
    await tester.pumpAndSettle();
  });

  testWidgets('root back asks before exit; cancel keeps the app open', (
    tester,
  ) async {
    final calls = <MethodCall>[];
    tester.binding.defaultBinaryMessenger.setMockMethodCallHandler(
      SystemChannels.platform,
      (call) async {
        calls.add(call);
        return null;
      },
    );
    addTearDown(
      () => tester.binding.defaultBinaryMessenger.setMockMethodCallHandler(
        SystemChannels.platform,
        null,
      ),
    );
    await tester.pumpWidget(
      const MaterialApp(
        home: AndroidRootBackGuard(child: Scaffold(body: Text('Home'))),
      ),
    );
    await tester.binding.handlePopRoute();
    await tester.pumpAndSettle();
    expect(find.text('앱을 종료할까요?'), findsOneWidget);
    expect(
      calls.where((call) => call.method == 'SystemNavigator.pop'),
      isEmpty,
    );
    await tester.tap(find.text('취소'));
    await tester.pumpAndSettle();
    expect(find.text('Home'), findsOneWidget);
    await tester.binding.handlePopRoute();
    await tester.pumpAndSettle();
    await tester.tap(find.text('종료'));
    await tester.pumpAndSettle();
    expect(
      calls.where((call) => call.method == 'SystemNavigator.pop'),
      hasLength(1),
    );
  });

  testWidgets('back dismisses a pushed screen before the root guard', (
    tester,
  ) async {
    await tester.pumpWidget(
      MaterialApp(
        home: AndroidRootBackGuard(
          child: Builder(
            builder: (context) => Scaffold(
              body: TextButton(
                onPressed: () => Navigator.of(context).push(
                  MaterialPageRoute<void>(
                    builder: (_) => const Scaffold(body: Text('Detail')),
                  ),
                ),
                child: const Text('Open detail'),
              ),
            ),
          ),
        ),
      ),
    );
    await tester.tap(find.text('Open detail'));
    await tester.pumpAndSettle();
    await tester.binding.handlePopRoute();
    await tester.pumpAndSettle();
    expect(find.text('Detail'), findsNothing);
    expect(find.text('Open detail'), findsOneWidget);
    expect(find.text('앱을 종료할까요?'), findsNothing);
  });

  testWidgets(
    'active folder handles back before tab navigation; hidden tabs do not',
    (tester) async {
      var folderDepth = 1;
      var tab = 2;
      var hiddenCalls = 0;
      await tester.pumpWidget(
        MaterialApp(
          home: AndroidRootBackGuard(
            onBack: () {
              if (tab == 0) return false;
              tab = 0;
              return true;
            },
            child: Column(
              children: [
                ScreenBackHandler(
                  enabled: true,
                  onBack: () {
                    if (folderDepth == 0) return false;
                    folderDepth--;
                    return true;
                  },
                  child: const Text('Folder'),
                ),
                ScreenBackHandler(
                  enabled: false,
                  onBack: () {
                    hiddenCalls++;
                    return true;
                  },
                  child: const Text('Hidden'),
                ),
              ],
            ),
          ),
        ),
      );
      await tester.binding.handlePopRoute();
      await tester.pumpAndSettle();
      expect(folderDepth, 0);
      expect(tab, 2);
      await tester.binding.handlePopRoute();
      await tester.pumpAndSettle();
      expect(tab, 0);
      expect(hiddenCalls, 0);
      expect(find.text('앱을 종료할까요?'), findsNothing);
      await tester.binding.handlePopRoute();
      await tester.pumpAndSettle();
      expect(find.text('앱을 종료할까요?'), findsOneWidget);
      await tester.binding.handlePopRoute();
      await tester.pumpAndSettle();
      expect(find.text('앱을 종료할까요?'), findsNothing);
    },
  );

  testWidgets('standalone folder handler returns to the parent folder first', (
    tester,
  ) async {
    var depth = 1;
    final navigator = GlobalKey<NavigatorState>();
    await tester.pumpWidget(
      MaterialApp(navigatorKey: navigator, home: const Text('Home')),
    );
    navigator.currentState!.push(
      MaterialPageRoute<void>(
        builder: (_) => StatefulBuilder(
          builder: (context, setState) => ScreenBackHandler(
            enabled: depth > 0,
            onBack: () {
              setState(() => depth--);
              return true;
            },
            child: const Text('Folder route'),
          ),
        ),
      ),
    );
    await tester.pumpAndSettle();
    await tester.binding.handlePopRoute();
    await tester.pumpAndSettle();
    expect(depth, 0);
    expect(find.text('Folder route'), findsOneWidget);
    await tester.binding.handlePopRoute();
    await tester.pumpAndSettle();
    expect(find.text('Home'), findsOneWidget);
  });

  for (final inset in [24.0, 48.0]) {
    testWidgets(
      'Android content avoids a $inset system bar without duplicate padding',
      (tester) async {
        final buttonKey = UniqueKey();
        var taps = 0;
        await tester.pumpWidget(
          MaterialApp(
            builder: (context, child) => MediaQuery(
              data: MediaQuery.of(context).copyWith(
                padding: EdgeInsets.only(bottom: inset),
                viewPadding: EdgeInsets.only(bottom: inset),
              ),
              child: AndroidNavigationSafeArea(child: child!),
            ),
            home: Scaffold(
              body: SafeArea(
                top: false,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: TextButton(
                    key: buttonKey,
                    onPressed: () => taps++,
                    child: const Text('Action'),
                  ),
                ),
              ),
            ),
          ),
        );
        final bottom = tester.getRect(find.byKey(buttonKey)).bottom;
        expect(bottom, 600 - inset);
        await tester.tap(find.byKey(buttonKey));
        expect(taps, 1);
      },
    );
  }

  testWidgets(
    'landscape reserves side navigation and keyboard does not add a second bottom gap',
    (tester) async {
      final contentKey = UniqueKey();
      MediaQueryData? inside;
      await tester.pumpWidget(
        MaterialApp(
          builder: (context, child) => MediaQuery(
            data: MediaQuery.of(context).copyWith(
              padding: const EdgeInsets.only(right: 48),
              viewPadding: const EdgeInsets.only(right: 48, bottom: 24),
              viewInsets: const EdgeInsets.only(bottom: 200),
            ),
            child: AndroidNavigationSafeArea(child: child!),
          ),
          home: Builder(
            builder: (context) {
              inside = MediaQuery.of(context);
              return SizedBox.expand(key: contentKey);
            },
          ),
        ),
      );
      expect(tester.getRect(find.byKey(contentKey)).right, 800 - 48);
      expect(tester.getRect(find.byKey(contentKey)).bottom, 600);
      expect(inside!.padding.right, 0);
      expect(inside!.viewPadding.right, 0);
      expect(inside!.viewInsets.bottom, 200);
    },
  );

  testWidgets('iOS keeps its existing safe area and root back behavior', (
    tester,
  ) async {
    debugDefaultTargetPlatformOverride = TargetPlatform.iOS;
    addTearDown(() => debugDefaultTargetPlatformOverride = null);
    await tester.pumpWidget(
      const MaterialApp(
        home: AndroidNavigationSafeArea(
          child: AndroidRootBackGuard(child: Text('Home')),
        ),
      ),
    );
    expect(find.byType(SafeArea), findsNothing);
    expect(find.byType(PopScope<Object?>), findsNothing);
    debugDefaultTargetPlatformOverride = null;
  });
}
