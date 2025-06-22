import 'package:fpdart/fpdart.dart';
import 'package:berkut_unsplash_app/core/error/failure.dart';
import 'package:berkut_unsplash_app/core/usecase/usecase.dart';
import 'package:berkut_unsplash_app/features/photo_search/domain/entities/photo_entity.dart';
import 'package:berkut_unsplash_app/features/photo_search/domain/repositories/photo_repository.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class SearchPhotos implements UseCase<List<PhotoEntity>, SearchPhotosParams> {
  final PhotoRepository repository;

  SearchPhotos(this.repository);

  @override
  Future<Either<Failure, List<PhotoEntity>>> call(SearchPhotosParams params) async {
    return await repository.searchPhotos(params.query, page: params.page);
  }
}

class SearchPhotosParams {
  final String query;
  final int page;
  SearchPhotosParams({required this.query, this.page = 1});
}