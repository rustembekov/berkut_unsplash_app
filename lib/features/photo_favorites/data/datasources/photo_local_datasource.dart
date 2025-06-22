import 'package:berkut_unsplash_app/core/db/isar_service.dart';
import 'package:berkut_unsplash_app/core/error/exceptions.dart';
import 'package:berkut_unsplash_app/features/photo_favorites/data/models/favorite_photo_model.dart';
import 'package:injectable/injectable.dart';
import 'package:isar/isar.dart';

abstract class PhotoLocalDataSource {
  Future<List<FavoritePhotoModel>> getFavorites();
  Future<void> addFavorite(FavoritePhotoModel photo);
  Future<void> removeFavorite(String photoId);
  Stream<FavoritePhotoModel?> watchFavorite(String photoId);
}

@LazySingleton(as: PhotoLocalDataSource)
class PhotoLocalDataSourceImpl implements PhotoLocalDataSource {
  final IsarService _isarService;
  PhotoLocalDataSourceImpl(this._isarService);

  @override
  Future<void> addFavorite(FavoritePhotoModel photo) async {
    try {
      final db = await _isarService.getDB();
      await db.writeTxn(() => db.favoritePhotoModels.put(photo));
    } catch (e) {
      throw CacheException();
    }
  }

  @override
  Future<List<FavoritePhotoModel>> getFavorites() async {
    try {
      final db = await _isarService.getDB();
      return await db.favoritePhotoModels.where().findAll();
    } catch (e) {
      throw CacheException();
    }
  }

  @override
  Future<void> removeFavorite(String photoId) async {
     try {
      final db = await _isarService.getDB();
      await db.writeTxn(() async {
        await db.favoritePhotoModels.filter().photoIdEqualTo(photoId).deleteAll();
      });
    } catch (e) {
      throw CacheException();
    }
  }

  @override
  Stream<FavoritePhotoModel?> watchFavorite(String photoId) async* {
     try {
      final db = await _isarService.getDB();
      yield* db.favoritePhotoModels.filter().photoIdEqualTo(photoId).watch(fireImmediately: true)
          .map((results) => results.firstOrNull);
    } catch (e) {
      throw CacheException();
    }
  }
}