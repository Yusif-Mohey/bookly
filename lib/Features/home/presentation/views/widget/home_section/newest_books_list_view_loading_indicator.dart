import 'package:bookly/Features/home/presentation/views/widget/home_section/custom_book_image_loading_indicator.dart';
import 'package:bookly/core/widgets/custom_fading_wiget.dart';
import 'package:flutter/material.dart';

class NewestBooksListViewLoadingIndicator extends StatelessWidget {
  const NewestBooksListViewLoadingIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomFadingWiget(
      child: SizedBox(
        height: 125,
        child: Row(
          children: [
            CustomBookImageLoadingIndicator(size: 2.5 / 4),
            const SizedBox(
              width: 30,
            ),
            // Expanded(
            //   child: Column(
            //     crossAxisAlignment: CrossAxisAlignment.start,
            //     children: [
            //       SizedBox(
            //         width: MediaQuery.of(context).size.width * .5,
            //         child: Text(
            //           'Harry Potter and the Goblet of Fire',
            //           maxLines: 2,
            //           overflow: TextOverflow.ellipsis,
            //           style: Styles.textStyle20.copyWith(
            //             fontFamily: kGtSectraFine,
            //           ),
            //         ),
            //       ),
            //       const SizedBox(
            //         height: 3,
            //       ),
            //       const Text(
            //         'J.K. Rowling',
            //         style: Styles.textStyle14,
            //       ),
            //       const SizedBox(
            //         height: 3,
            //       ),
            //       Row(
            //         children: [
            //           Text(
            //             '19.99 €',
            //             style: Styles.textStyle20.copyWith(
            //               fontWeight: FontWeight.bold,
            //             ),
            //           ),
            //           const Spacer(),
            //           const BookRating(),
            //         ],
            //       ),
            //     ],
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
