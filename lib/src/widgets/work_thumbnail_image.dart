import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../utils/work_thumbnail_urls.dart';

/// Network thumbnails use sam, then main, then the caller's placeholder.
class WorkThumbnailImage extends StatelessWidget {
  const WorkThumbnailImage({
    super.key,
    required this.imageUrl,
    this.httpHeaders,
    this.cacheKey,
    this.memCacheWidth,
    this.width,
    this.height,
    this.fit,
    this.filterQuality = FilterQuality.low,
    this.fadeInDuration = const Duration(milliseconds: 500),
    this.fadeOutDuration = const Duration(milliseconds: 1000),
    this.placeholderFadeInDuration,
    this.placeholder,
    this.errorWidget,
  });

  final String imageUrl;
  final Map<String, String>? httpHeaders;
  final String? cacheKey;
  final int? memCacheWidth;
  final double? width;
  final double? height;
  final BoxFit? fit;
  final FilterQuality filterQuality;
  final Duration fadeInDuration;
  final Duration fadeOutDuration;
  final Duration? placeholderFadeInDuration;
  final PlaceholderWidgetBuilder? placeholder;
  final LoadingErrorWidgetBuilder? errorWidget;

  @override
  Widget build(BuildContext context) {
    final urls = workThumbnailUrls(imageUrl);
    Widget image(int index) => CachedNetworkImage(
      imageUrl: urls[index],
      httpHeaders: httpHeaders,
      cacheKey: workThumbnailCacheKey(cacheKey, index, urls.length),
      memCacheWidth: memCacheWidth,
      width: width,
      height: height,
      fit: fit,
      filterQuality: filterQuality,
      fadeInDuration: fadeInDuration,
      fadeOutDuration: fadeOutDuration,
      placeholderFadeInDuration: placeholderFadeInDuration,
      placeholder: placeholder,
      errorWidget: (context, url, error) => index + 1 < urls.length
          ? image(index + 1)
          : errorWidget?.call(context, url, error) ?? const Icon(Icons.image),
    );
    return image(0);
  }
}
