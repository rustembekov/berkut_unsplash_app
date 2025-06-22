import 'package:fpdart/fpdart.dart';
import 'package:berkut_unsplash_app/core/error/failure.dart';
import 'package:berkut_unsplash_app/features/photo_search/domain/entities/photo_entity.dart';

abstract class PhotoRepository {
  Future<Either<Failure, List<PhotoEntity>>> getRandomPhotos({int count = 8});
  Future<Either<Failure, List<PhotoEntity>>> searchPhotos(String query, {int page = 1});
}