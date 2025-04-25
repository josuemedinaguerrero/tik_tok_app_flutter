import 'package:flutter/material.dart';

import 'package:tik_tok/domain/entities/video_post.dart';
import 'package:tik_tok/presentation/widgets/shared/video_buttons.dart';
import 'package:tik_tok/presentation/widgets/video/fullscreen_player.dart';
import 'package:tik_tok/presentation/widgets/video/video_background.dart';

class VideoScrollableView extends StatelessWidget {
  final List<VideoPost> videos;

  const VideoScrollableView({super.key, required this.videos});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      scrollDirection: Axis.vertical,
      physics: BouncingScrollPhysics(),
      itemCount: videos.length,
      itemBuilder: (context, index) {
        final videoPost = videos[index];
        return Stack(
          children: [
            SizedBox.expand(
              child: FullscreenPlayer(
                videoUrl: videoPost.videoUrl,
                caption: videoPost.caption,
              ),
            ),
            VideoBackground(),
            Positioned(
              bottom: 40,
              right: 20,
              child: VideoButtons(video: videoPost),
            ),
          ],
        );
      },
    );
  }
}
