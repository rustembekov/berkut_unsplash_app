import 'package:fpdart/fpdart.dart';
import 'package:berkut_unsplash_app/core/error/failure.dart';

// Абстракция для всех UseCase'ов.
// Type - тип возвращаемого успешного результата
// Params - параметры, которые принимает UseCase
abstract class UseCase<Type, Params> {
  Future<Either<Failure, Type>> call(Params params);
}

// Используется, если UseCase не принимает параметров
class NoParams {}