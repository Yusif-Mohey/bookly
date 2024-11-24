import 'package:bookly/Features/home/presentation/views/widget/home_section/custom_book_image_loading_indicator.dart';
import 'package:bookly/Features/home/presentation/views/widget/home_section/custom_text_loading_indicator.dart';
import 'package:bookly/core/widgets/custom_fading_wiget.dart';
import 'package:flutter/material.dart';

class NewestBookLoadingIndicatorItem extends StatelessWidget {
  const NewestBookLoadingIndicatorItem({super.key});

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
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomTextLoadingIndicator(
                    width: MediaQuery.of(context).size.width,
                    height: 20,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  CustomTextLoadingIndicator(
                    width: MediaQuery.of(context).size.width / 2,
                    height: 20,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  CustomTextLoadingIndicator(
                    width: MediaQuery.of(context).size.width / 3,
                    height: 20,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      CustomTextLoadingIndicator(
                        width: MediaQuery.of(context).size.width / 5,
                        height: 20,
                      ),
                      const Spacer(),
                      CustomTextLoadingIndicator(
                        width: MediaQuery.of(context).size.width / 9,
                        height: 20,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
