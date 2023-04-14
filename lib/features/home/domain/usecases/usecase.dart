import 'package:either_dart/either.dart';
import 'package:flutter_application_1/core/utils/failure.dart';

abstract class UseCase {
  Future<Either<Failure, dynamic>> call();
}
