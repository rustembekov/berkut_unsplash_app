import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import 'package:berkut_unsplash_app/core/error/failure.dart';
import 'package:berkut_unsplash_app/core/usecase/usecase.dart';
import 'package:berkut_unsplash_app/features/photo_favorites/domain/repositories/favorites_repository.dart';
import 'package:berkut_unsplash_app/features/photo_search/domain/entities/photo_entity.dart';


@lazySingleton
class GetFavorites implements UseCase<List<PhotoEntity>, NoParams> {
  final FavoritesRepository repository;

  GetFavorites(this.repository);

  @override
  Future<Either<Failure, List<PhotoEntity>>> call(NoParams params) async {
    return await repository.getFavorites();
  }
}