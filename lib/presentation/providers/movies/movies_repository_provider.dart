import 'package:cinemapedia_riverpod/infrastructure/datasources/moviedb_datasource_impl.dart';
import 'package:cinemapedia_riverpod/infrastructure/repositories/movie_repository_impl.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

//este repositorio es de solo lectura(inmutable)
final movieRepositoryProvider =
    Provider((ref) => MovieRepositoryImpl(MoviedbDatasourceImpl()));
