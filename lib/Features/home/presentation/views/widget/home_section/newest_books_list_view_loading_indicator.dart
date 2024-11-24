import 'package:bookly/Features/home/presentation/views/widget/home_section/newest_book_loading_indicator_item.dart';
import 'package:flutter/material.dart';

class NewestBooksListViewLoadingIndicator extends StatelessWidget {
  const NewestBooksListViewLoadingIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: NewestBookLoadingIndicatorItem(),
        );
      },
      padding: EdgeInsets.zero,
      itemCount: 10,
    );
  }
}
