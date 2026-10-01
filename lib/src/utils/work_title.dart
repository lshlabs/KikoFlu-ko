import '../models/work.dart';

enum WorkTitleMode { metadata, folder, custom }

/// Unknown saved values retain the existing metadata title behavior.
WorkTitleMode parseWorkTitleMode(String? value) =>
    WorkTitleMode.values.firstWhere(
      (mode) => mode.name == value,
      orElse: () => WorkTitleMode.metadata,
    );

/// Display only: never changes the metadata title or filesystem paths.
String displayWorkTitle(
  Work work, [
  WorkTitleMode mode = WorkTitleMode.metadata,
]) {
  switch (mode) {
    case WorkTitleMode.metadata:
      return work.title;
    case WorkTitleMode.folder:
      final folder = cleanWorkFolderName(work.folderName);
      return folder.isEmpty ? work.title : folder;
    case WorkTitleMode.custom:
      final custom = work.customTitle;
      return custom == null || custom.isEmpty ? work.title : custom;
  }
}

String cleanWorkFolderName(String? folderName) {
  final value = folderName ?? '';
  final code = RegExp(r'RJ[\s_-]*\d{6,8}', caseSensitive: false);
  if (!code.hasMatch(value)) return value;

  // Dart does not support JavaScript Unicode punctuation property escapes.
  // Cover the paired ASCII/CJK wrappers used in work folder names explicitly.
  final wrappedCode = RegExp(
    r'[\s_-]*(?:[\(\[\{（［｛【「『〈《〔]\s*RJ[\s_-]*\d{6,8}\s*[\)\]\}）］｝】」』〉》〕]|([#*_~+=@!$%^])\s*RJ[\s_-]*\d{6,8}\s*\1|RJ[\s_-]*\d{6,8})[\s_-]*',
    caseSensitive: false,
  );
  return value
      .replaceAll(wrappedCode, ' ')
      .replaceAll(
        RegExp(r'[\(\[\{（［｛【「『〈《〔]\s*[\)\]\}）］｝】」』〉》〕]|([#*_~+=@!])\s*\1'),
        ' ',
      )
      .replaceAll(RegExp(r'\s+'), ' ')
      .replaceAll(
        RegExp(r'^[\s_#＃@＠\-–—=+~～.,，。:：;；·・]+|[\s_#＃@＠\-–—=+~～.,，。:：;；·・]+$'),
        '',
      )
      .trim();
}
