import 'package:cinemapedia_riverpod/domain/entities/actor.dart';

abstract class ActorsDatasource {
  Future<List<Actor>> getActorByMovie(String movieId);
}
