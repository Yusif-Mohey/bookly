import 'package:bookly/Features/home/domain/entities/book_entity.dart';
import 'package:bookly/core/errors/faliure.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Faliure, List<BookEntity>>> fetchFeatureBooks();
  Future<Either<Faliure, List<BookEntity>>> fetchNewesteBooks();
}