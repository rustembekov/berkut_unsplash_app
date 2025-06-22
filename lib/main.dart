import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:go_router/go_router.dart';
import 'package:berkut_unsplash_app/core/di/injection.dart';

Future<void> main() async {
  // Гарантируем инициализацию биндингов Flutter
  WidgetsFlutterBinding.ensureInitialized();
  
  // Загружаем переменные окружения из .env файла
  await dotenv.load(fileName: ".env");

  // Конфигурируем все наши зависимости (DI)
  await configureDependencies();

  // Запускаем приложение
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Получаем сконфигурированный роутер из GetIt
    final GoRouter router = getIt<GoRouter>();

    return MaterialApp.router(
      title: 'Image Search Pro',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        brightness: Brightness.dark,
      ),
      routerConfig: router,
    );
  }
}