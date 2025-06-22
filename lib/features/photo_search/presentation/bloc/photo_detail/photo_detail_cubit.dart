import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:berkut_unsplash_app/features/photo_favorites/domain/usecases/add_favorite.dart';
import 'package:berkut_unsplash_app/features/photo_favorites/domain/usecases/is_favorite_stream.dart';
import 'package:berkut_unsplash_app/features/photo_favorites/domain/usecases/remove_favorite.dart';
import 'package:berkut_unsplash_app/features/photo_search/domain/entities/photo_entity.dart';
import 'package:injectable/injectable.dart';

part 'photo_detail_state.dart';
part 'photo_detail_cubit.freezed.dart';

@injectable
class PhotoDetailCubit extends Cubit<PhotoDetailState> {
  final IsFavoriteStream _isFavoriteStream;
  final AddFavorite _addFavorite;
  final RemoveFavorite _removeFavorite;
  StreamSubscription? _subscription;

  PhotoDetailCubit(
    this._isFavoriteStream,
    this._addFavorite,
    this._removeFavorite,
  ) : super(const PhotoDetailState(isFavorite: false));

  void checkFavoriteStatus(String photoId) {
    _subscription?.cancel();
    _subscription = _isFavoriteStream(photoId).listen((isFavorite) {
      emit(state.copyWith(isFavorite: isFavorite));
    });
  }

  void toggleFavorite(PhotoEntity photo) {
    if (state.isFavorite) {
      _removeFavorite(photo.id);
    } else {
      _addFavorite(photo);
    }
  }

  @override
  Future<void> close() {
    _subscription?.cancel();
    return super.close();
  }
}