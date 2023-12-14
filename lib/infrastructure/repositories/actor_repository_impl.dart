import 'package:cinemapedia_riverpod/domain/datasources/actor_datasource.dart';
import 'package:cinemapedia_riverpod/domain/entities/actor.dart';
import 'package:cinemapedia_riverpod/domain/repositories/actor_repository.dart';

class ActorRepositoryImpl extends ActorsRepository {
  final ActorsDatasource actorDatasource;

  ActorRepositoryImpl(this.actorDatasource);

  @override
  Future<List<Actor>> getActorByMovie(String movieId) {
    return actorDatasource.getActorByMovie(movieId);
  }
}
