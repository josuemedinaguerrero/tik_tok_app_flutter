import 'package:flutter/material.dart';

import 'package:tik_tok/domain/entities/video_post.dart';
import 'package:tik_tok/domain/repositories/video_post_repository.dart';

class DiscoverProvider extends ChangeNotifier {
  final VideoPostRepository videoPostRepository;

  DiscoverProvider({required this.videoPostRepository});

  bool initialLoading = true;
  List<VideoPost> videos = [];

  Future<void> loadNextPage() async {
    final newVideos = await videoPostRepository.getTrendingVideosByPage(1);

    videos.addAll(newVideos);
    initialLoading = false;

    notifyListeners();
  }
}
