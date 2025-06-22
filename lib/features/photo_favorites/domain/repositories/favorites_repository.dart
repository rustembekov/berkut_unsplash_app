import 'package:fpdart/fpdart.dart';
import 'package:berkut_unsplash_app/core/error/failure.dart';
import 'package:berkut_unsplash_app/features/photo_search/domain/entities/photo_entity.dart';

abstract class FavoritesRepository {
  Future<Either<Failure, List<PhotoEntity>>> getFavorites();
  Future<Either<Failure, Unit>> addFavorite(PhotoEntity photo);
  Future<Either<Failure, Unit>> removeFavorite(String photoId);
  Stream<bool> isFavoriteStream(String photoId);
}