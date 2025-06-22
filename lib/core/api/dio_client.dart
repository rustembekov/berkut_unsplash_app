import 'package:dio/dio.dart';
import 'package:berkut_unsplash_app/core/config/app_config.dart';
import 'package:injectable/injectable.dart';

@module
abstract class DioModule {
  @lazySingleton
  Dio provideDio(AppConfig appConfig) {
    final dio = Dio(
      BaseOptions(
        baseUrl: 'https://api.unsplash.com',
        connectTimeout: const Duration(seconds: 10),
        receiveTimeout: const Duration(seconds: 10),
        headers: {
          'Accept-Version': 'v1',
        },
      ),
    );

    dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) {
          options.headers['Authorization'] = 'Client-ID ${appConfig.unsplashAccessKey}';
          return handler.next(options);
        },
      ),
    );

    dio.interceptors.add(LogInterceptor(
      requestBody: true,
      responseBody: true,
    ));

    return dio;
  }
}