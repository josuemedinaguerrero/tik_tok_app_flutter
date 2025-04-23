import 'package:flutter/material.dart';

import 'package:tik_tok/domain/entities/video_post.dart';
import 'package:tik_tok/infrastructure/models/local_video_model.dart';
import 'package:tik_tok/shared/data/local_video_posts.dart';

class DiscoverProvider extends ChangeNotifier {
  bool initialLoading = true;
  List<VideoPost> videos = [];

  Future<void> loadNextPage() async {
    final List<VideoPost> newVideos =
        videoPosts
            .map((v) => LocalVideoModel.fromJson(v).toVideoPostEntity())
            .toList();

    videos.addAll(newVideos);
    initialLoading = false;

    notifyListeners();
  }
}
