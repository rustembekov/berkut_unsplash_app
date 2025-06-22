import 'package:fpdart/fpdart.dart';
import 'package:berkut_unsplash_app/core/error/exceptions.dart';
import 'package:berkut_unsplash_app/core/error/failure.dart';
import 'package:berkut_unsplash_app/features/photo_search/data/datasources/photo_remote_datasource.dart';
import 'package:berkut_unsplash_app/features/photo_search/domain/entities/photo_entity.dart';
import 'package:berkut_unsplash_app/features/photo_search/domain/repositories/photo_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: PhotoRepository)
class PhotoRepositoryImpl implements PhotoRepository {
  final PhotoRemoteDataSource remoteDataSource;

  PhotoRepositoryImpl({required this.remoteDataSource});

  @override
  Future<Either<Failure, List<PhotoEntity>>> getRandomPhotos({int count = 8}) async {
    try {
      final photoModels = await remoteDataSource.getRandomPhotos();
      return Right(photoModels.map((model) => model.toEntity()).toList());
    } on ServerException {
      return const Left(ServerFailure('An error occurred with the server.'));
    }
  }

  @override
  Future<Either<Failure, List<PhotoEntity>>> searchPhotos(String query, {int page = 1}) async {
    try {
      final photoModels = await remoteDataSource.searchPhotos(query, page);
      return Right(photoModels.map((model) => model.toEntity()).toList());
    } on ServerException {
      return const Left(ServerFailure('An error occurred with the server.'));
    }
  }
}