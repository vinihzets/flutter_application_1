import 'package:either_dart/either.dart';
import 'package:flutter_application_1/core/utils/failure.dart';
import 'package:flutter_application_1/features/home/data/datasources/datasources.dart';
import 'package:flutter_application_1/features/home/domain/repositories/repository.dart';

class RepositoryImp implements Repository{
  DataSources dataSources;


  RepositoryImp(this.dataSources);

    @override
    Future<Either<Failure,dynamic>> call(){
      return dataSources();
    }
}