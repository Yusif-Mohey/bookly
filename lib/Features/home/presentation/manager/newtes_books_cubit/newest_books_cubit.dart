import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bookly/Features/home/domain/entities/book_entity.dart';
import 'package:bookly/Features/home/domain/use_cases/fetch_newest_books_use_case.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.fetchNewestBooksUseCase) : super(NewestBooksInitial());
  final FetchNewestBooksUseCase fetchNewestBooksUseCase;
  Future<void> featchFeatureBooksUseCase() async {
    emit(NewestBooksLoading());
    var result = await fetchNewestBooksUseCase.call();
    result.fold((faliure) {
      emit(NewestBooksFaliure(faliure.message));
    }, (books) {
      emit(NewestBooksSucess(books));
    });
  }
}
