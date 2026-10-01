import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kikoeru_flutter/l10n/app_localizations.dart';
import 'package:kikoeru_flutter/src/models/work.dart';
import 'package:kikoeru_flutter/src/utils/tag_localizer.dart';
import 'package:kikoeru_flutter/src/widgets/tag_chip.dart';

void main() {
  test(
    'Korean keeps server names even for IDs in the static translation map',
    () {
      expect(
        TagLocalizer.localize(497, '서버 한국어 태그', const Locale('ko')),
        '서버 한국어 태그',
      );
      expect(
        TagLocalizer.localize(999999, '사용자 태그', const Locale('ko', 'KR')),
        '사용자 태그',
      );
      expect(TagLocalizer.localize(497, 'ASMR', const Locale('ko')), 'ASMR');
    },
  );

  test(
    'Korean name lookup preserves server names without English fallback',
    () {
      expect(
        TagLocalizer.localizeByName('한국어 태그', const Locale('ko')),
        '한국어 태그',
      );
      expect(TagLocalizer.localizeByName('ASMR', const Locale('ko')), 'ASMR');
    },
  );

  test('existing English localization still works', () {
    expect(TagLocalizer.localize(497, '서버 태그', const Locale('en')), 'ASMR');
  });

  testWidgets('Korean TagChip displays the server label', (tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        locale: Locale('ko'),
        localizationsDelegates: S.localizationsDelegates,
        supportedLocales: S.supportedLocales,
        home: Scaffold(
          body: TagChip(tag: Tag(id: 497, name: '서버 한국어 태그')),
        ),
      ),
    );
    expect(find.text('서버 한국어 태그'), findsOneWidget);
    expect(find.text('ASMR'), findsNothing);
  });
}
