import 'package:cinemapedia_riverpod/infrastructure/datasources/actor_datasource_impl.dart';
import 'package:cinemapedia_riverpod/infrastructure/repositories/actor_repository_impl.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final actorRepositoryProvider =
    Provider((ref) => ActorRepositoryImpl(ActorDatasourceImpl()));
