/// Prefer the small sample cover, falling back to the full main cover.
/// Preserve authentication and other query parameters. Arbitrary artwork URLs
/// have no known sam/main API and must stay unchanged.
List<String> workThumbnailUrls(String imageUrl) {
  final uri = Uri.tryParse(imageUrl);
  if (uri == null || !RegExp(r'^/api/cover/\d+/?$').hasMatch(uri.path)) {
    return [imageUrl];
  }
  String forType(String type) => uri
      .replace(queryParameters: {...uri.queryParametersAll, 'type': type})
      .toString();
  return [forType('sam'), forType('main')];
}

String? workThumbnailCacheKey(
  String? cacheKey,
  int candidateIndex,
  int count,
) => cacheKey == null || count == 1 || candidateIndex > 0
    ? cacheKey
    : '${cacheKey}_sam';
