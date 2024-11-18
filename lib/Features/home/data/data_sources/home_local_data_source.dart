import 'package:bookly/Features/home/domain/entities/book_entity.dart';
import 'package:bookly/constants.dart';
import 'package:hive/hive.dart';

abstract class HomeLocalDataSource {
  List<BookEntity> fetchFeatureBooks();
  List<BookEntity> fetchNewesteBooks();
}

class HomeLocalDataSourceImp extends HomeLocalDataSource {
  @override
  List<BookEntity> fetchFeatureBooks() {
    var box = Hive.box<BookEntity>(kFeatuerdBooks);
    return box.values.toList();
  }

  @override
  List<BookEntity> fetchNewesteBooks() {
    // TODO: implement fetchNewesteBooks
    throw UnimplementedError();
  }
}
