import 'package:bookly/Features/home/domain/entities/book_entity.dart';
import 'package:bookly/Features/home/presentation/manager/feature_books_cubit/feature_books_cubit.dart';
import 'package:bookly/Features/home/presentation/views/widget/home_section/featured_book_list_view_loaging_indicator.dart';
import 'package:bookly/Features/home/presentation/views/widget/home_section/featured_list_view.dart';
import 'package:bookly/core/utils/functions/error_snackBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedBooksListViewBlocConsumer extends StatefulWidget {
  const FeaturedBooksListViewBlocConsumer({super.key});

  @override
  State<FeaturedBooksListViewBlocConsumer> createState() =>
      _FeaturedBooksListViewBlocConsumerState();
}

class _FeaturedBooksListViewBlocConsumerState
    extends State<FeaturedBooksListViewBlocConsumer> {
  List<BookEntity> books = [];
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<FeatureBooksCubit, FeatureBooksState>(
      listener: (context, state) {
        if (state is FeatureBooksSucess) {
          books.addAll(state.books);
        }
        if (state is FeatureBooksPaginationFailure ||
            state is FeatureBooksFailure) {
          ScaffoldMessenger.of(context).showSnackBar(errorSnackBar());
        }
      },
      builder: (context, state) {
        if (state is FeatureBooksSucess ||
            state is FeatureBooksFailure ||
            state is FeatureBooksPaginationFailure) {
          return FeaturedBooksListView(books: books);
        } else {
          return FeaturedBookListViewLoagingIndicator();
        }
      },
    );
  }
}
