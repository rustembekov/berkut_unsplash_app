import 'package:isar/isar.dart';
import 'package:berkut_unsplash_app/features/photo_search/domain/entities/photo_entity.dart';

part 'favorite_photo_model.g.dart';

@collection
class FavoritePhotoModel {
  Id isarId = Isar.autoIncrement; // Isar auto-increment id

  @Index(unique: true, replace: true)
  final String photoId;

  final String? description;
  final String imageUrlSmall;
  final String imageUrlRegular;
  final String authorName;
  final int likes;

  FavoritePhotoModel({
    required this.photoId,
    this.description,
    required this.imageUrlSmall,
    required this.imageUrlRegular,
    required this.authorName,
    required this.likes,
  });

  factory FavoritePhotoModel.fromEntity(PhotoEntity entity) {
    return FavoritePhotoModel(
      photoId: entity.id,
      description: entity.description,
      imageUrlSmall: entity.imageUrlSmall,
      imageUrlRegular: entity.imageUrlRegular,
      authorName: entity.authorName,
      likes: entity.likes,
    );
  }

  PhotoEntity toEntity() {
    return PhotoEntity(
      id: photoId,
      description: description,
      imageUrlSmall: imageUrlSmall,
      imageUrlRegular: imageUrlRegular,
      authorName: authorName,
      likes: likes,
    );
  }
}