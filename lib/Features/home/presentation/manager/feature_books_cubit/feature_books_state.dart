part of 'feature_books_cubit.dart';

abstract class FeatureBooksState {}

final class FeatureBooksInitial extends FeatureBooksState {}

final class FeatureBooksLoading extends FeatureBooksState {}

final class FeatureBooksPaginationLoading extends FeatureBooksState {}

final class FeatureBooksPaginationFailure extends FeatureBooksState {}

final class FeatureBooksFailure extends FeatureBooksState {
  final String errMessage;

  FeatureBooksFailure(this.errMessage);
}

final class FeatureBooksSucess extends FeatureBooksState {
  final List<BookEntity> books;

  FeatureBooksSucess(this.books);
}
