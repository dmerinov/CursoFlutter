import 'package:flutter/material.dart';
import 'package:tok_tik/infrastructure/models/local_video_model.dart';
import 'package:tok_tik/shared/data/local_video_post.dart';
import '../../domain/entities/video_post.dart';

class DiscoverProvider extends ChangeNotifier {
  //todo: repository, datasource; datasource en repository

  bool initialLoading = true;
  List<VideoPost> videos = [];

  //func init
  Future<void> loadNextPage() async {
    //todo: cargar videos
    final List<VideoPost> newVideos = videoPosts
        .map((video) => LocalVideoModel.fromJson(video).toVideoPostEntity())
        .toList();

    videos.addAll(newVideos);
    initialLoading = false;
    notifyListeners();
  }
}
