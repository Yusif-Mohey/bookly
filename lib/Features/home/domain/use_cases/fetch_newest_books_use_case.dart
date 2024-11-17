import 'package:bookly/Features/home/domain/entities/book_entity.dart';
import 'package:bookly/Features/home/domain/repositiry/home_repo.dart';
import 'package:bookly/core/errors/faliure.dart';
import 'package:bookly/core/use_case/use_case.dart';
import 'package:dartz/dartz.dart';

class FetchNewestBooksUseCase extends UseCase<List<BookEntity>, NoParam> {
  final HomeRepo homeRepo;

  FetchNewestBooksUseCase(this.homeRepo);
  @override
  Future<Either<Faliure, List<BookEntity>>> call([NoParam? pram]) async {
    return await homeRepo.fetchFeatureBooks();
  }
}
