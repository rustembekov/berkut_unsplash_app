import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:berkut_unsplash_app/core/usecase/usecase.dart'; 
import 'package:berkut_unsplash_app/features/photo_search/domain/entities/photo_entity.dart';
import 'package:berkut_unsplash_app/features/photo_search/domain/usecases/get_random_photos.dart';
import 'package:injectable/injectable.dart';

part 'photo_random_state.dart';
part 'photo_random_cubit.freezed.dart';

@injectable
class PhotoRandomCubit extends Cubit<PhotoRandomState> {
  final GetRandomPhotos _getRandomPhotos;

  PhotoRandomCubit(this._getRandomPhotos) : super(const PhotoRandomState.initial());

  Future<void> fetchRandomPhotos() async {
    emit(const PhotoRandomState.loading());
    final result = await _getRandomPhotos(NoParams());

    result.fold(
      (failure) => emit(PhotoRandomState.error(failure.message)),
      (photos) => emit(PhotoRandomState.loaded(photos)),
    );
  }
}