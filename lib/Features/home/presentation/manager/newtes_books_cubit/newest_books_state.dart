part of 'newest_books_cubit.dart';

abstract class NewestBooksState {}

final class NewestBooksInitial extends NewestBooksState {}

final class NewestBooksLoading extends NewestBooksState {}

final class NewestBooksSucess extends NewestBooksState {
  final List<BookEntity> books;

  NewestBooksSucess(this.books);
}

final class NewestBooksFaliure extends NewestBooksState {
  final String errMessage;

  NewestBooksFaliure(this.errMessage);
}
