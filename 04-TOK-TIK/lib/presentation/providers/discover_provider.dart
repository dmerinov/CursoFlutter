import 'package:flutter/material.dart';
import 'package:tok_tik/domain/repositories/video_post_repository.dart';
import '../../domain/entities/video_post.dart';

class DiscoverProvider extends ChangeNotifier {
  final VideoPostRepository videoRepository;
  bool initialLoading = true;
  List<VideoPost> videos = [];

  DiscoverProvider({required this.videoRepository});

  //func init
  Future<void> loadNextPage() async {
    //todo: cargar videos
    final newVideos = await videoRepository.getTrendingVideosByPage(1);

    videos.addAll(newVideos);
    initialLoading = false;
    notifyListeners();
  }
}
