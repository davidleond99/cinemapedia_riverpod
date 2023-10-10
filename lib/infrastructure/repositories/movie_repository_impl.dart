import 'package:cinemapedia_riverpod/domain/datasources/movies_datasource.dart';
import 'package:cinemapedia_riverpod/domain/entities/movie.dart';
import 'package:cinemapedia_riverpod/domain/repositories/movies_repository.dart';

class MovieDBRepositoryImpl implements MoviesRepository {
  final MoviesDatasource movieDBDatasource;

  MovieDBRepositoryImpl(this.movieDBDatasource);
  @override
  Future<List<Movie>> getNowPlaying({int page = 1}) {
    return movieDBDatasource.getNowPlaying(page: page);
  }
}
