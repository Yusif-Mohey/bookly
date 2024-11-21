import 'package:bookly/Features/home/domain/entities/book_entity.dart';
import 'package:bookly/Features/home/presentation/manager/feature_books_cubit/feature_books_cubit.dart';
import 'package:bookly/Features/home/presentation/views/widget/home_section/featured_book_list_view_loaging_indicator.dart';
import 'package:bookly/Features/home/presentation/views/widget/home_section/featured_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedBooksListViewBlocBuilder extends StatefulWidget {
  const FeaturedBooksListViewBlocBuilder({super.key});

  @override
  State<FeaturedBooksListViewBlocBuilder> createState() =>
      _FeaturedBooksListViewBlocBuilderState();
}

class _FeaturedBooksListViewBlocBuilderState
    extends State<FeaturedBooksListViewBlocBuilder> {
  List<BookEntity> books = [];
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<FeatureBooksCubit, FeatureBooksState>(
      listener: (context, state) {
        if (state is FeatureBooksSucess) {
          books.addAll(state.books);
        }
        if (state is FeatureBooksPaginationFailure) {
          ScaffoldMessenger.of(context).showSnackBar(errorSnackBar());
        }
      },
      builder: (context, state) {
        if (state is FeatureBooksSucess ||
            state is FeatureBooksPaginationFailure) {
          return FeaturedBooksListView(books: books);
        } else if (state is FeatureBooksPaginationLoading) {
          return FeaturedBookListViewLoagingIndicator();
        } else if (state is FeatureBooksFailure) {
          // ignore: avoid_print
          print(state.errMessage.toString());
          ScaffoldMessenger.of(context).showSnackBar(errorSnackBar());
          return Text(state.errMessage);
          // return FeaturedBookListViewLoagingIndicator();
        } else if (state is FeatureBooksInitial) {
          return Text(state.toString());
        } else {
          return FeaturedBookListViewLoagingIndicator();
        }
      },
    );
  }

  SnackBar errorSnackBar() {
    return SnackBar(
      content: const Text(
        'An error occurred! Please try again.',
        style: TextStyle(color: Colors.white),
      ),
      backgroundColor: Colors.red,
      behavior: SnackBarBehavior.floating, // Optional: makes it float
      duration: const Duration(seconds: 3), // Duration for visibility
    );
  }
}
