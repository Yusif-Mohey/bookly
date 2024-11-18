import 'package:bookly/Features/home/data/data_sources/home_local_data_source.dart';
import 'package:bookly/Features/home/data/data_sources/home_remote_data_source.dart';
import 'package:bookly/Features/home/domain/entities/book_entity.dart';
import 'package:bookly/Features/home/domain/repos/home_repo.dart';
import 'package:bookly/core/errors/faliure.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImp extends HomeRepo {
  final HomeLocalDataSource homeLocalDataSource;
  final HomeRemoteDataSource remoteDataSource;

  HomeRepoImp(
      {required this.homeLocalDataSource, required this.remoteDataSource});
  @override
  Future<Either<Faliure, List<BookEntity>>> fetchFeatureBooks() async {
    //don`t forget { try -> catch }
    try {
      List<BookEntity> books;
      books = homeLocalDataSource.fetchFeatureBooks();
      if (books.isNotEmpty) {
        return right(books);
      }
      books = await remoteDataSource.fetchFeatureBooks();
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFaliure.fromDioError(e));
      }
      return left(ServerFaliure(e.toString()));
    }
  }

  @override
  Future<Either<Faliure, List<BookEntity>>> fetchNewesteBooks() async {
    try {
      List<BookEntity> books;
      books = homeLocalDataSource.fetchNewesteBooks();
      if (books.isNotEmpty) {
        return right(books);
      }
      books = await remoteDataSource.fetchNewesteBooks();
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFaliure.fromDioError(e));
      }
      return left(ServerFaliure(e.toString()));
    }
  }
}
