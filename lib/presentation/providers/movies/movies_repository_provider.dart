import 'package:cinemapedia_riverpod/infrastructure/datasources/moviedb_datasource_impl.dart';
import 'package:cinemapedia_riverpod/infrastructure/repositories/movie_repository_impl.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final movieRepositoryProvider = Provider((ref) {
  return MovieRepositoryImpl(MoviedbDatasourceImpl());
});
