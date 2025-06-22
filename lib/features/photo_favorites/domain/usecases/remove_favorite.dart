import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import 'package:berkut_unsplash_app/core/error/failure.dart';
import 'package:berkut_unsplash_app/core/usecase/usecase.dart';
import 'package:berkut_unsplash_app/features/photo_favorites/domain/repositories/favorites_repository.dart';

@lazySingleton
class RemoveFavorite implements UseCase<Unit, String> {
  final FavoritesRepository repository;

  RemoveFavorite(this.repository);

  @override
  Future<Either<Failure, Unit>> call(String params) async {
    return await repository.removeFavorite(params);
  }
}