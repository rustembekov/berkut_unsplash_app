part of 'photo_detail_cubit.dart';

@freezed
class PhotoDetailState with _$PhotoDetailState {
  const factory PhotoDetailState({
    required bool isFavorite,
  }) = _PhotoDetailState;
}