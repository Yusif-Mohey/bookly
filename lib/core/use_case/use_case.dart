import 'package:bookly/core/errors/faliure.dart';
import 'package:dartz/dartz.dart';

abstract class UseCase<Type, Param> {
  Future<Either<Faliure, Type>> call([Param param]);
}

class NoParam {}
