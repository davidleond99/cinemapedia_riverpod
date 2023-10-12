import 'package:cinemapedia_riverpod/domain/datasources/movies_datasource.dart';
import 'package:cinemapedia_riverpod/domain/entities/movie.dart';
import 'package:cinemapedia_riverpod/domain/repositories/movies_repository.dart';

class MovieRepositoryImpl implements MoviesRepository {
  final MoviesDatasource datasource;

  MovieRepositoryImpl(this.datasource);
  @override
  Future<List<Movie>> getNowPlaying({int page = 1}) {
    return datasource.getNowPlaying(page: page);
  }
}
