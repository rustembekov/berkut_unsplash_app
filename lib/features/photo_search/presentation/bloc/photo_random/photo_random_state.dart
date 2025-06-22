// lib/features/photo_search/presentation/bloc/photo_random/photo_random_state.dart

part of 'photo_random_cubit.dart';

@freezed
class PhotoRandomState with _$PhotoRandomState {
  const factory PhotoRandomState.initial() = _Initial;
  const factory PhotoRandomState.loading() = _Loading;
  const factory PhotoRandomState.loaded(List<PhotoEntity> photos) = _Loaded;
  const factory PhotoRandomState.error(String message) = _Error;
}