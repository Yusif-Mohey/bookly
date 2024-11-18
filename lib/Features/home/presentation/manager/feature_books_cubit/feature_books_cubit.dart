import 'package:bloc/bloc.dart';
import 'package:bookly/Features/home/domain/entities/book_entity.dart';
import 'package:bookly/Features/home/domain/use_cases/fetch_feature_books_use_case.dart';

part 'feature_books_state.dart';

class FeatureBooksCubit extends Cubit<FeatureBooksState> {
  FeatureBooksCubit(this.featureBooksUseCase) : super(FeatureBooksInitial());
  final FetchFeatureBooksUseCase featureBooksUseCase;
  Future<void> featchFeatureBooksUseCase() async {
    emit(FeatureBooksLoading());
    var result = await featureBooksUseCase.call();
    result.fold((faliure) {
      emit(FeatureBooksFaluire(faliure.message));
    }, (books) {
      emit(FeatureBooksSucess(books));
    });
  }
}
