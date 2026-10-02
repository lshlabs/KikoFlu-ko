import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:kikoeru_flutter/l10n/app_localizations.dart';
import 'package:kikoeru_flutter/src/providers/auth_provider.dart';
import 'package:kikoeru_flutter/src/providers/kikoflu_ko_settings_provider.dart';
import 'package:kikoeru_flutter/src/providers/work_title_provider.dart';
import 'package:kikoeru_flutter/src/screens/kikoflu_ko_settings_screen.dart';
import 'package:kikoeru_flutter/src/services/kikoeru_api_service.dart'
    hide kikoeruApiServiceProvider;

class SettingsApi extends KikoeruApiService {
  String language = 'ja-jp';
  bool failSave = false;
  bool official = false;
  @override
  bool get isOfficialServer => official;
  @override
  Future<String> getMetadataLanguage() async => language;
  @override
  Future<void> setMetadataLanguage(String value) async {
    if (failSave) throw StateError('offline');
    language = value;
  }
}

void main() {
  setUp(() => SharedPreferences.setMockInitialValues({}));
  Future<ProviderContainer> pump(
    WidgetTester tester,
    SettingsApi api, {
    Future<void> Function()? reload,
  }) async {
    final container = ProviderContainer(
      overrides: [
        kikoeruApiServiceProvider.overrideWithValue(api),
        if (reload != null) kikoeruDataReloadProvider.overrideWithValue(reload),
      ],
    );
    addTearDown(container.dispose);
    await tester.pumpWidget(
      UncontrolledProviderScope(
        container: container,
        child: const MaterialApp(
          localizationsDelegates: S.localizationsDelegates,
          supportedLocales: S.supportedLocales,
          home: KikoFluKoSettingsScreen(),
        ),
      ),
    );
    await tester.pumpAndSettle();
    return container;
  }

  testWidgets('collection switch works without an administrator account', (
    tester,
  ) async {
    final api = SettingsApi();
    await pump(tester, api);
    await tester.tap(find.byType(SwitchListTile));
    await tester.pumpAndSettle();
    expect(api.language, 'ko-kr');
    expect(
      tester.widget<SwitchListTile>(find.byType(SwitchListTile)).value,
      isTrue,
    );
    await tester.tap(find.byType(SwitchListTile));
    await tester.pumpAndSettle();
    expect(api.language, 'ja-jp');
  });
  testWidgets(
    'failed save leaves the original collection language enabled for retry',
    (tester) async {
      final api = SettingsApi()..failSave = true;
      await pump(tester, api);
      await tester.tap(find.byType(SwitchListTile));
      await tester.pumpAndSettle();
      final tile = tester.widget<SwitchListTile>(find.byType(SwitchListTile));
      expect(tile.value, isFalse);
      expect(tile.onChanged, isNotNull);
      expect(find.text('수집 언어를 저장하지 못했습니다. 서버 연결을 확인해 주세요.'), findsOneWidget);
    },
  );
  testWidgets('title selection saves the preference and updates its row', (
    tester,
  ) async {
    final container = await pump(tester, SettingsApi());
    await tester.tap(find.text('작품목록 표시 방식'));
    await tester.pumpAndSettle();
    await tester.tap(find.text('폴더명'));
    await tester.pumpAndSettle();
    expect(container.read(workTitleModeProvider), WorkTitleMode.folder);
    expect(
      (await SharedPreferences.getInstance()).getString('work_title_mode'),
      'folder',
    );
    expect(find.text('폴더명'), findsOneWidget);
  });
  testWidgets('reload cannot run twice and reports completion', (tester) async {
    final pending = Completer<void>();
    var calls = 0;
    await pump(
      tester,
      SettingsApi(),
      reload: () {
        calls++;
        return pending.future;
      },
    );
    await tester.tap(find.text('Kikoeru에서 데이터 다시 불러오기'));
    await tester.pump();
    await tester.tap(find.text('Kikoeru에서 데이터 다시 불러오기'));
    expect(calls, 1);
    expect(find.text('불러오는 중…'), findsOneWidget);
    pending.complete();
    await tester.pumpAndSettle();
    expect(find.text('Kikoeru에서 작품 데이터를 다시 불러왔습니다.'), findsOneWidget);
  });
  testWidgets('official server keeps title and reload settings available', (
    tester,
  ) async {
    await pump(tester, SettingsApi()..official = true);
    expect(find.byType(SwitchListTile), findsNothing);
    expect(find.text('작품목록 표시 방식'), findsOneWidget);
    expect(find.text('Kikoeru에서 데이터 다시 불러오기'), findsOneWidget);
  });
}
