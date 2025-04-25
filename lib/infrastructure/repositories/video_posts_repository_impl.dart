import 'package:tik_tok/domain/datasources/video_post_datasource.dart';
import 'package:tik_tok/domain/entities/video_post.dart';
import 'package:tik_tok/domain/repositories/video_post_repository.dart';

class VideoPostsRepositoryImpl implements VideoPostRepository {
  final VideoPostDatasource videoPostDatasource;

  VideoPostsRepositoryImpl({required this.videoPostDatasource});

  @override
  Future<List<VideoPost>> getTrendingVideosByPage(int page) {
    return videoPostDatasource.getTrendingVideosByPage(page);
  }

  @override
  Future<List<VideoPost>> getTrendingVideosByUser(String userId) {
    throw UnimplementedError();
  }
}
