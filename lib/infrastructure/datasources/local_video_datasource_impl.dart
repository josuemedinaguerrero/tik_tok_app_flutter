import 'package:tik_tok/domain/datasources/video_post_datasource.dart';
import 'package:tik_tok/domain/entities/video_post.dart';
import 'package:tik_tok/infrastructure/models/local_video_model.dart';
import 'package:tik_tok/shared/data/local_video_posts.dart';

class LocalVideoDatasourceImpl implements VideoPostDatasource {
  @override
  Future<List<VideoPost>> getTrendingVideosByPage(int page) async {
    final List<VideoPost> newVideos =
        videoPosts
            .map((v) => LocalVideoModel.fromJson(v).toVideoPostEntity())
            .toList();

    return newVideos;
  }

  @override
  Future<List<VideoPost>> getTrendingVideosByUser(String userId) {
    throw UnimplementedError();
  }
}
