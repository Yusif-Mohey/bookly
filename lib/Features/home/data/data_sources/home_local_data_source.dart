import 'package:bookly/Features/home/domain/entities/book_entity.dart';

abstract class HomeLocalDataSource {
  Future<List<BookEntity>> fetchFeatureBooks();
  Future<List<BookEntity>> fetchNewesteBooks();
}

class HomeLocalDataSourceImp extends HomeLocalDataSource {
  @override
  Future<List<BookEntity>> fetchFeatureBooks() {
    // TODO: implement fetchFeatureBooks
    throw UnimplementedError();
  }

  @override
  Future<List<BookEntity>> fetchNewesteBooks() {
    // TODO: implement fetchNewesteBooks
    throw UnimplementedError();
  }
}
