import 'package:cinemapedia_riverpod/domain/entities/movie.dart';

abstract class MovieRepository {
  Future<List<Movie>> getNowPlaying({int page = 1});
}
