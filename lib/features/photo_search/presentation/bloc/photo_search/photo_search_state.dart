part of 'photo_search_cubit.dart';

@freezed
class PhotoSearchState with _$PhotoSearchState {
  const factory PhotoSearchState.initial() = _Initial;
  const factory PhotoSearchState.loading() = _Loading;
  const factory PhotoSearchState.loaded(List<PhotoEntity> photos) = _Loaded;
  const factory PhotoSearchState.error(String message) = _Error;
}