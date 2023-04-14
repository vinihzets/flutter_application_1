import 'package:either_dart/either.dart';
import 'package:flutter_application_1/core/utils/failure.dart';
import 'package:flutter_application_1/features/home/data/datasources/datasources.dart';

class DataSourcesRemoteImp implements DataSources {
  @override
  Future<Either<Failure, dynamic>> call() {

      // a requisition api external or database

    throw UnimplementedError();
  }
}
