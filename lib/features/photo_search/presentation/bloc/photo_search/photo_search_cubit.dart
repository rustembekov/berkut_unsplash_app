import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:berkut_unsplash_app/features/photo_search/domain/entities/photo_entity.dart';
import 'package:berkut_unsplash_app/features/photo_search/domain/usecases/search_photos.dart';
import 'package:injectable/injectable.dart';

part 'photo_search_state.dart';
part 'photo_search_cubit.freezed.dart';

@injectable
class PhotoSearchCubit extends Cubit<PhotoSearchState> {
  final SearchPhotos _searchPhotos;

  PhotoSearchCubit(this._searchPhotos) : super(const PhotoSearchState.initial());

  Future<void> search(String query) async {
    if (query.isEmpty) {
      emit(const PhotoSearchState.initial());
      return;
    }
    emit(const PhotoSearchState.loading());
    final result = await _searchPhotos(SearchPhotosParams(query: query));
    
    result.fold(
      (failure) => emit(PhotoSearchState.error(failure.message)),
      (photos) => emit(PhotoSearchState.loaded(photos)),
    );
  }
}