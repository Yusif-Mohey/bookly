import 'package:bookly/Features/home/domain/entities/book_entity.dart';
import 'package:bookly/Features/home/domain/repos/home_repo.dart';
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
// {
//             "kind": "books#volume",
//             "id": "rOCfDwAAQBAJ",
//             "etag": "OBd/tIU5psE",
//             "selfLink": "https://www.googleapis.com/books/v1/volumes/rOCfDwAAQBAJ",
//             "volumeInfo": {
//                 "title": "Elements of Programming",
//                 "authors": [
//                     "Alexander Stepanov",
//                     "Paul McJones"
//                 ],
//                 "publisher": "Lulu.com",
//                 "publishedDate": "2019-06-17",
//                 "description": "Elements of Programming provides a different understanding of programming than is presented elsewhere. Its major premise is that practical programming, like other areas of science and engineering, must be based on a solid mathematical foundation. This book shows that algorithms implemented in a real programming language, such as C++, can operate in the most general mathematical setting. For example, the fast exponentiation algorithm is defined to work with any associative operation. Using abstract algorithms leads to efficient, reliable, secure, and economical software.",
//                 "industryIdentifiers": [
//                     {
//                         "type": "ISBN_13",
//                         "identifier": "9780578222141"
//                     },
//                     {
//                         "type": "ISBN_10",
//                         "identifier": "0578222140"
//                     }
//                 ],
//                 "readingModes": {
//                     "text": false,
//                     "image": true
//                 },
//                 "pageCount": 282,
//                 "printType": "BOOK",
//                 "categories": [
//                     "Computers"
//                 ],
//                 "maturityRating": "NOT_MATURE",
//                 "allowAnonLogging": false,
//                 "contentVersion": "0.1.2.0.preview.1",
//                 "panelizationSummary": {
//                     "containsEpubBubbles": false,
//                     "containsImageBubbles": false
//                 },
//                 "imageLinks": {
//                     "smallThumbnail": "http://books.google.com/books/content?id=rOCfDwAAQBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api",
//                     "thumbnail": "http://books.google.com/books/content?id=rOCfDwAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api"
//                 },
//                 "language": "en",
//                 "previewLink": "http://books.google.com/books?id=rOCfDwAAQBAJ&pg=PP1&dq=rpogramming&hl=&cd=1&source=gbs_api",
//                 "infoLink": "http://books.google.com/books?id=rOCfDwAAQBAJ&dq=rpogramming&hl=&source=gbs_api",
//                 "canonicalVolumeLink": "https://books.google.com/books/about/Elements_of_Programming.html?hl=&id=rOCfDwAAQBAJ"
//             },
//             "saleInfo": {
//                 "country": "US",
//                 "saleability": "NOT_FOR_SALE",
//                 "isEbook": false
//             },
//             "accessInfo": {
//                 "country": "US",
//                 "viewability": "PARTIAL",
//                 "embeddable": true,
//                 "publicDomain": false,
//                 "textToSpeechPermission": "ALLOWED",
//                 "epub": {
//                     "isAvailable": false
//                 },
//                 "pdf": {
//                     "isAvailable": true,
//                     "acsTokenLink": "http://books.google.com/books/download/Elements_of_Programming-sample-pdf.acsm?id=rOCfDwAAQBAJ&format=pdf&output=acs4_fulfillment_token&dl_type=sample&source=gbs_api"
//                 },
//                 "webReaderLink": "http://play.google.com/books/reader?id=rOCfDwAAQBAJ&hl=&source=gbs_api",
//                 "accessViewStatus": "SAMPLE",
//                 "quoteSharingAllowed": false
//             },
//             "searchInfo": {
//                 "textSnippet": "This book shows that algorithms implemented in a real programming language, such as C++, can operate in the most general mathematical setting. For example, the fast exponentiation algorithm is defined to work with any associative operation."
//             }
//         },
