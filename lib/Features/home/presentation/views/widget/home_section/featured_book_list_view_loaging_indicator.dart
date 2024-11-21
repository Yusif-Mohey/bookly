import 'package:bookly/Features/home/presentation/views/widget/home_section/custom_book_image_loading_indicator.dart';
import 'package:bookly/core/widgets/custom_fading_wiget.dart';
import 'package:flutter/material.dart';

class FeaturedBookListViewLoagingIndicator extends StatelessWidget {
  const FeaturedBookListViewLoagingIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomFadingWiget(
      child: SizedBox(
        height: MediaQuery.of(context).size.height * .3,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 10, //dont forget this shit
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: CustomBookImageLoadingIndicator(),
            );
          },
        ),
      ),
    );
  }
}
