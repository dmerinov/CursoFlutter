class VideoPost {
  final String caption;
  final String videoUrl;
  final String likes;
  final String views;

  VideoPost(
      {required this.caption,
      required this.videoUrl,
      this.likes = "",
      this.views = ""});
}
