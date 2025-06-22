import 'package:injectable/injectable.dart';
import 'package:berkut_unsplash_app/features/photo_favorites/domain/repositories/favorites_repository.dart';

@lazySingleton
class IsFavoriteStream {
  final FavoritesRepository repository;

  IsFavoriteStream(this.repository);

  Stream<bool> call(String photoId) {
    return repository.isFavoriteStream(photoId);
  }
}