import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:berkut_unsplash_app/features/photo_search/domain/entities/photo_entity.dart';

part 'photo_model.freezed.dart';
part 'photo_model.g.dart';

@freezed
class PhotoModel with _$PhotoModel {
  const PhotoModel._();

  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory PhotoModel({
    required String id,
    String? description,
    required UrlsModel urls,
    required UserModel user,
    required int likes,
  }) = _PhotoModel;

  factory PhotoModel.fromJson(Map<String, dynamic> json) => _$PhotoModelFromJson(json);

  PhotoEntity toEntity() {
    return PhotoEntity(
      id: id,
      description: description ?? 'No description',
      imageUrlSmall: urls.small,
      imageUrlRegular: urls.regular,
      authorName: user.name,
      likes: likes,
    );
  }
}

@freezed
class UrlsModel with _$UrlsModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory UrlsModel({
    required String raw,
    required String full,
    required String regular,
    required String small,
    required String thumb,
  }) = _UrlsModel;

  factory UrlsModel.fromJson(Map<String, dynamic> json) => _$UrlsModelFromJson(json);
}

@freezed
class UserModel with _$UserModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory UserModel({
    required String id,
    required String username,
    required String name,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);
}