import 'package:fpdart/fpdart.dart';
import 'package:berkut_unsplash_app/core/error/failure.dart';
import 'package:berkut_unsplash_app/core/usecase/usecase.dart';
import 'package:berkut_unsplash_app/features/photo_search/domain/entities/photo_entity.dart';
import 'package:berkut_unsplash_app/features/photo_search/domain/repositories/photo_repository.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class GetRandomPhotos implements UseCase<List<PhotoEntity>, NoParams> {
  final PhotoRepository repository;

  GetRandomPhotos(this.repository);

  @override
  Future<Either<Failure, List<PhotoEntity>>> call(NoParams params) async {
    return await repository.getRandomPhotos();
  }
}