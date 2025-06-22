part of 'favorites_cubit.dart';

@freezed
class FavoritesState with _$FavoritesState {
  const factory FavoritesState.initial() = _Initial;
  const factory FavoritesState.loading() = _Loading;
  const factory FavoritesState.loaded(List<PhotoEntity> photos) = _Loaded;
  const factory FavoritesState.empty() = _Empty;
  const factory FavoritesState.error(String message) = _Error;
}