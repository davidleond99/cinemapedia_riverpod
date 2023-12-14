import 'package:cinemapedia_riverpod/domain/entities/actor.dart';

abstract class ActorsRepository {
  Future<List<Actor>> getActorByMovie(String movieId);
}
