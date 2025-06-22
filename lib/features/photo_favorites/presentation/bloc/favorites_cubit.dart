import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:berkut_unsplash_app/core/usecase/usecase.dart';
import 'package:berkut_unsplash_app/features/photo_favorites/domain/usecases/get_favorites.dart';
import 'package:berkut_unsplash_app/features/photo_search/domain/entities/photo_entity.dart';
import 'package:injectable/injectable.dart';

part 'favorites_state.dart';
part 'favorites_cubit.freezed.dart';

@injectable
class FavoritesCubit extends Cubit<FavoritesState> {
  final GetFavorites _getFavorites;
  FavoritesCubit(this._getFavorites) : super(const FavoritesState.initial());

  Future<void> loadFavorites() async {
    emit(const FavoritesState.loading());
    final result = await _getFavorites(NoParams());

    result.fold(
      (failure) => emit(FavoritesState.error(failure.message)),
      (photos) {
        if (photos.isEmpty) {
          emit(const FavoritesState.empty());
        } else {
          emit(FavoritesState.loaded(photos));
        }
      },
    );
  }
}