import 'package:flutter/material.dart';

import '../../../domain/entities/video_post.dart';

class VideoScrollableView extends StatelessWidget {
  final List<VideoPost> videos;

  const VideoScrollableView({super.key, required this.videos});

  @override
  Widget build(BuildContext context) {
    return PageView(
      scrollDirection: Axis.vertical,
      physics: BouncingScrollPhysics(),
      children: [
        Container(
          color: Colors.orange,
        ),
        Container(
          color: Colors.blue,
        )
      ],
    );
  }
}
