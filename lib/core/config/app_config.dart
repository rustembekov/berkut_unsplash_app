import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:injectable/injectable.dart';

@singleton 
class AppConfig {
  final String unsplashAccessKey;

  AppConfig._({required this.unsplashAccessKey});

  @factoryMethod
  static AppConfig create() {
    final accessKey = dotenv.env['UNSPLASH_ACCESS_KEY'];
    if (accessKey == null) {
      throw Exception('UNSPLASH_ACCESS_KEY not found in .env file');
    }
    return AppConfig._(unsplashAccessKey: accessKey);
  }
}