import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../services/cache_service.dart';
import 'auth_provider.dart';
import 'works_provider.dart';
import 'search_result_provider.dart';
import 'playlist_detail_provider.dart';
import 'recommendation_provider.dart';
import 'settings_provider.dart';

final metadataLanguageProvider = FutureProvider<String>((ref) {
  return ref.watch(kikoeruApiServiceProvider).getMetadataLanguage();
});

final kikoeruDataReloadProvider = Provider<Future<void> Function()>((ref) {
  return () async {
    await CacheService.clearServerMetadataCache();
    await ref.read(worksProvider.notifier).reloadServerData();
    ref.invalidate(searchResultProvider);
    ref.invalidate(playlistDetailProvider);
    ref.invalidate(recommendationProvider);
    ref.invalidate(metadataLanguageProvider);
    ref.read(settingsCacheRefreshTriggerProvider.notifier).state++;
  };
});
