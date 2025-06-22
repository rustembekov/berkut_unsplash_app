import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:injectable/injectable.dart';
import 'package:berkut_unsplash_app/features/photo_favorites/data/models/favorite_photo_model.dart';

@lazySingleton
class IsarService {
  late Future<Isar> db;

  IsarService() {
    db = _openDB();
  }

  Future<Isar> _openDB() async {
    if (Isar.instanceNames.isEmpty) {
      final dir = await getApplicationDocumentsDirectory();
      // Здесь мы перечисляем все схемы, которые будет использовать Isar
      // Пока у нас только одна - FavoritePhotoModelSchema
      return await Isar.open(
        [FavoritePhotoModelSchema],
      
        directory: dir.path,
        inspector: true, // Включаем инспектор для отладки
      );
    }
    return Future.value(Isar.getInstance());
  }

  // Метод для получения готового экземпляра Isar
  Future<Isar> getDB() => db;
}