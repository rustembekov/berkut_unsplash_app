import 'package:fpdart/fpdart.dart';
import 'package:berkut_unsplash_app/core/error/exceptions.dart';
import 'package:berkut_unsplash_app/core/error/failure.dart';
import 'package:berkut_unsplash_app/features/photo_favorites/data/datasources/photo_local_datasource.dart';
import 'package:berkut_unsplash_app/features/photo_favorites/data/models/favorite_photo_model.dart';
import 'package:berkut_unsplash_app/features/photo_favorites/domain/repositories/favorites_repository.dart';
import 'package:berkut_unsplash_app/features/photo_search/domain/entities/photo_entity.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: FavoritesRepository)
class FavoritesRepositoryImpl implements FavoritesRepository {
  final PhotoLocalDataSource localDataSource;

  FavoritesRepositoryImpl({required this.localDataSource});
  
  @override
  Future<Either<Failure, Unit>> addFavorite(PhotoEntity photo) async {
    try {
      await localDataSource.addFavorite(FavoritePhotoModel.fromEntity(photo));
      return const Right(unit);
    } on CacheException {
      return Left(CacheFailure('Could not cache photo.'));
    }
  }

  @override
  Future<Either<Failure, List<PhotoEntity>>> getFavorites() async {
    try {
      final models = await localDataSource.getFavorites();
      return Right(models.map((e) => e.toEntity()).toList());
    } on CacheException {
      return Left(CacheFailure('Could not retrieve favorites.'));
    }
  }

  @override
  Future<Either<Failure, Unit>> removeFavorite(String photoId) async {
    try {
      await localDataSource.removeFavorite(photoId);
      return const Right(unit);
    } on CacheException {
      return Left(CacheFailure('Could not remove photo.'));
    }
  }

  @override
  Stream<bool> isFavoriteStream(String photoId) {
    return localDataSource.watchFavorite(photoId).map((model) => model != null);
  }
}