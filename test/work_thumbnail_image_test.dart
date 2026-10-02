import 'dart:convert';
import 'dart:io';
import 'package:cached_network_image/cached_network_image.dart';
// Test the image loader through its cache interface without real HTTP requests.
// ignore: depend_on_referenced_packages
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
// ignore: depend_on_referenced_packages
import 'package:file/memory.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kikoeru_flutter/src/utils/work_thumbnail_urls.dart';
import 'package:kikoeru_flutter/src/widgets/work_thumbnail_image.dart';

class CoverCache extends Fake implements BaseCacheManager {
  CoverCache(this.mainExists);
  final bool mainExists;
  final requests = <String>[];
  @override
  Stream<FileResponse> getFileStream(
    String url, {
    String? key,
    Map<String, String>? headers,
    bool withProgress = false,
  }) async* {
    requests.add(url);
    if (!mainExists || Uri.parse(url).queryParameters['type'] == 'sam') {
      throw const HttpException('404');
    }
    final file = MemoryFileSystem().file('/cover.png')
      ..writeAsBytesSync(
        base64Decode(
          'iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAQAAAC1HAwCAAAAC0lEQVR42mNk+A8AAQUBAScY42YAAAAASUVORK5CYII=',
        ),
      );
    yield FileInfo(
      file,
      FileSource.Cache,
      DateTime.now().add(const Duration(days: 1)),
      url,
    );
  }
}

void main() {
  test('preserves authentication and selects sam before main', () {
    final urls = workThumbnailUrls(
      'https://host/api/cover/123?token=a%2Bb&x=1&x=2',
    );
    expect(urls.map((url) => Uri.parse(url).queryParameters['type']), [
      'sam',
      'main',
    ]);
    for (final url in urls) {
      expect(Uri.parse(url).queryParameters['token'], 'a+b');
      expect(Uri.parse(url).queryParametersAll['x'], ['1', '2']);
    }
    expect(workThumbnailCacheKey('work_cover_123', 0, 2), 'work_cover_123_sam');
    expect(workThumbnailCacheKey('work_cover_123', 1, 2), 'work_cover_123');
    expect(workThumbnailUrls('https://host/custom.png'), [
      'https://host/custom.png',
    ]);
  });
  for (final mainExists in [true, false]) {
    testWidgets(
      'missing sam falls back to ${mainExists ? "main" : "placeholder"}',
      (tester) async {
        final cache = CoverCache(mainExists);
        CachedNetworkImageProvider.defaultCacheManager = cache;
        await tester.pumpWidget(
          MaterialApp(
            home: WorkThumbnailImage(
              imageUrl: 'https://host/api/cover/${mainExists ? 1 : 2}',
              fadeInDuration: Duration.zero,
              errorWidget: (_, _, _) => const Text('missing'),
            ),
          ),
        );
        await tester.runAsync(() async {
          await Future<void>.delayed(const Duration(milliseconds: 100));
        });
        await tester.pump();
        await tester.runAsync(() async {
          await Future<void>.delayed(const Duration(milliseconds: 100));
        });
        await tester.pumpAndSettle();
        expect(
          cache.requests.map((url) => Uri.parse(url).queryParameters['type']),
          ['sam', 'main'],
        );
        expect(
          find.text('missing'),
          mainExists ? findsNothing : findsOneWidget,
        );
        if (mainExists) expect(find.byType(RawImage), findsOneWidget);
      },
    );
  }
}
