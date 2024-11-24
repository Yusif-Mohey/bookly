import 'package:bookly/Features/home/domain/entities/book_entity.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating({
    super.key,
    this.mainAxisAlignment = MainAxisAlignment.start,
    required this.index,
    required this.books,
  });
  final int index;
  final List<BookEntity> books;
  final MainAxisAlignment mainAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          size: 14,
          color: Color(0xffFFDD4F),
        ),
        const SizedBox(
          width: 6.3,
        ),
        Text(
          '${books[index].rating}',
          style: Styles.textStyle16,
        ),
        const SizedBox(
          width: 5,
        ),
        // Opacity(
        //   opacity: .5,
        //   child: Text(
        //     books[index].bookId,
        //     style: Styles.textStyle14.copyWith(
        //       fontWeight: FontWeight.w600,
        //     ),
        //   ),
        // ),
      ],
    );
  }
}
