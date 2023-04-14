import 'package:either_dart/either.dart';
import 'package:flutter_application_1/core/utils/failure.dart';
import 'package:flutter_application_1/features/home/domain/repositories/repository.dart';
import 'package:flutter_application_1/features/home/domain/usecases/usecase.dart';

class UseCaseImp implements UseCase{
  Repository repository;


  UseCaseImp(this.repository);

  @override
  Future<Either<Failure,dynamic>> call(){
    return repository.call();
  }

}