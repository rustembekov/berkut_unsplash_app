import 'package:freezed_annotation/freezed_annotation.dart';

part 'photo_entity.freezed.dart';

@freezed
class PhotoEntity with _$PhotoEntity {
  const factory PhotoEntity({
    required String id,
    String? description,
    required String imageUrlSmall,
    required String imageUrlRegular,
    required String authorName,
    required int likes,
  }) = _PhotoEntity;
}