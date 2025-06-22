import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import 'package:berkut_unsplash_app/core/error/failure.dart';
import 'package:berkut_unsplash_app/core/usecase/usecase.dart';
import 'package:berkut_unsplash_app/features/photo_favorites/domain/repositories/favorites_repository.dart';
import 'package:berkut_unsplash_app/features/photo_search/domain/entities/photo_entity.dart';

@lazySingleton
class AddFavorite implements UseCase<Unit, PhotoEntity> {
  final FavoritesRepository repository;

  AddFavorite(this.repository);

  @override
  Future<Either<Failure, Unit>> call(PhotoEntity params) async {
    return await repository.addFavorite(params);
  }
}