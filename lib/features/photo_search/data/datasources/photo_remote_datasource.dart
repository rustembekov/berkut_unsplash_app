import 'package:dio/dio.dart';
import 'package:berkut_unsplash_app/core/error/exceptions.dart';
import 'package:berkut_unsplash_app/features/photo_search/data/models/photo_model.dart';
import 'package:injectable/injectable.dart';

abstract class PhotoRemoteDataSource {
  Future<List<PhotoModel>> getRandomPhotos();
  Future<List<PhotoModel>> searchPhotos(String query, int page);
}

@LazySingleton(as: PhotoRemoteDataSource)
class PhotoRemoteDataSourceImpl implements PhotoRemoteDataSource {
  final Dio _dio;
  PhotoRemoteDataSourceImpl(this._dio);

  @override
  Future<List<PhotoModel>> getRandomPhotos() async {
    try {
      final response = await _dio.get('/photos/random', queryParameters: {'count': 8});
      return (response.data as List).map((json) => PhotoModel.fromJson(json)).toList();
    } on DioException {
      throw ServerException();
    }
  }

  @override
  Future<List<PhotoModel>> searchPhotos(String query, int page) async {
     try {
      final response = await _dio.get('/search/photos', queryParameters: {
        'query': query,
        'page': page,
      });
      final results = (response.data['results'] as List);
      return results.map((json) => PhotoModel.fromJson(json)).toList();
    } on DioException {
      throw ServerException();
    }
  }
}