part of 'feature_books_cubit.dart';

@immutable
sealed class FeatureBooksState {}

final class FeatureBooksInitial extends FeatureBooksState {}

final class FeatureBooksLoading extends FeatureBooksState {}

final class FeatureBooksFaluire extends FeatureBooksState {
  final String errMessage;

  FeatureBooksFaluire(this.errMessage);
}

final class FeatureBooksSucess extends FeatureBooksState {
  final List<BookEntity> books;

  FeatureBooksSucess(this.books);
}
