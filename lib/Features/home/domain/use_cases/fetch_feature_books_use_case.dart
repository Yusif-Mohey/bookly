import 'package:bookly/Features/home/domain/entities/book_entity.dart';
import 'package:bookly/Features/home/domain/repos/home_repo.dart';
import 'package:bookly/core/errors/faliure.dart';
import 'package:bookly/core/use_case/use_case.dart';
import 'package:dartz/dartz.dart';

class FetchFeatureBooksUseCase extends UseCase<List<BookEntity>, int> {
  final HomeRepo homeRepo;

  FetchFeatureBooksUseCase(this.homeRepo);
  @override
  Future<Either<Faliure, List<BookEntity>>> call([int param = 0]) async {
    return await homeRepo.fetchFeatureBooks(
      pageNumber: param,
    );
  }
}
// FetchFeaturedBooksUseCase 