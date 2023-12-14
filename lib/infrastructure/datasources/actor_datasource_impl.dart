import 'package:cinemapedia_riverpod/domain/datasources/actor_datasource.dart';
import 'package:cinemapedia_riverpod/domain/entities/actor.dart';
import 'package:cinemapedia_riverpod/infrastructure/mappers/actor_mapper.dart';
import 'package:cinemapedia_riverpod/infrastructure/models/moviedb/credits_response.dart';
import 'package:dio/dio.dart';

import '../../config/constants/enviroment.dart';

class ActorDatasourceImpl extends ActorsDatasource {
  final dio = Dio(
    BaseOptions(
      baseUrl: 'https://api.themoviedb.org/3',
      queryParameters: {
        'api_key': Enviroment.theMovieDbKey,
        'language': 'es-MX'
      },
    ),
  );
  @override
  Future<List<Actor>> getActorByMovie(String movieId) async {
    final response = await dio.get(
      '/movie/$movieId/credits',
    );

    final castResponse = CreditsResponse.fromJson(response.data);

    final List<Actor> actors = castResponse.cast
        .map((cast) => ActorMapper.castToEntity(cast))
        .toList();

    return actors;
  }
}
