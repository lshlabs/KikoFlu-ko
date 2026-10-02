import 'dart:io';
import 'package:flutter_test/flutter_test.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:kikoeru_flutter/src/services/storage_service.dart';
import 'package:kikoeru_flutter/src/services/cache_service.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  test(
    'server metadata reload retains downloads, playback and user settings',
    () async {
      final temp = await Directory.systemTemp.createTemp(
        'kikoflu-metadata-test-',
      );
      Hive.init(temp.path);
      SharedPreferences.setMockInitialValues({
        'work_detail_123': '{}',
        'work_detail_time_123': 123,
        'work_tracks_123': '[]',
        'work_tracks_time_123': 123,
        'work_title_mode': 'folder',
        'audio_cache_meta_abc': 123,
        'download_tasks': 'saved',
        'playback_position': 45,
      });
      try {
        await StorageService.init();
        await CacheService.clearServerMetadataCache();
        final prefs = await StorageService.getPrefs();
        expect(
          prefs.getKeys().where(
            (key) =>
                key.startsWith('work_detail_') ||
                key.startsWith('work_tracks_'),
          ),
          isEmpty,
        );
        expect(prefs.getString('work_title_mode'), 'folder');
        expect(prefs.getInt('audio_cache_meta_abc'), 123);
        expect(prefs.getString('download_tasks'), 'saved');
        expect(prefs.getInt('playback_position'), 45);
      } finally {
        await Hive.close();
        await temp.delete(recursive: true);
      }
    },
  );
}
