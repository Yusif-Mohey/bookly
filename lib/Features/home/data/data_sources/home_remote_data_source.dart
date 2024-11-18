import 'package:bookly/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly/Features/home/domain/entities/book_entity.dart';
import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/app_service.dart';
import 'package:bookly/core/utils/functions/save_books_data.dart';

abstract class HomeRemoteDataSource {
  Future<List<BookEntity>> fetchFeatureBooks();
  Future<List<BookEntity>> fetchNewesteBooks();
}

class HomeRemoteDataSourceImp extends HomeRemoteDataSource {
  final AppService appService;

  HomeRemoteDataSourceImp(this.appService);
  @override
  Future<List<BookEntity>> fetchFeatureBooks() async {
    var data = await appService.get(
        endPoint: 'volumes?Filtering=free-ebooks&q=programming');
    List<BookEntity> books = getBooksList(data);
    saveBooksData(books, kFeatuerdBooks);
    return books;
  }

  @override
  Future<List<BookEntity>> fetchNewesteBooks() async {
    var data = await appService.get(
        endPoint: 'volumes?Filtering=free-ebooks&sort=newest&q=programming');
    List<BookEntity> books = getBooksList(data);
    return books;
  }

  List<BookEntity> getBooksList(Map<String, dynamic> data) {
    List<BookEntity> books = [];
    for (var bookMap in data['items']) {
      books.add(BookModel.fromJson(bookMap));
    }
    return books;
  }
}
