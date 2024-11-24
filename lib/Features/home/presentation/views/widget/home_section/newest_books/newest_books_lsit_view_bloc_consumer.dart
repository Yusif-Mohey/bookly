import 'package:bookly/Features/home/domain/entities/book_entity.dart';
import 'package:bookly/Features/home/presentation/manager/newtes_books_cubit/newest_books_cubit.dart';
import 'package:bookly/Features/home/presentation/views/widget/home_section/newest_books/newest_books_list_view.dart';
import 'package:bookly/Features/home/presentation/views/widget/home_section/newest_books/newest_books_list_view_loading_indicator.dart';
import 'package:bookly/core/utils/functions/error_snackBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewestBooksLsitViewBlocConsumer extends StatefulWidget {
  const NewestBooksLsitViewBlocConsumer({super.key});

  @override
  State<NewestBooksLsitViewBlocConsumer> createState() =>
      _NewestBooksLsitViewBlocConsumerState();
}

class _NewestBooksLsitViewBlocConsumerState
    extends State<NewestBooksLsitViewBlocConsumer> {
  List<BookEntity> books = [];
  @override
  Widget build(BuildContext context) {
    // return NewestBooksListViewLoadingIndicator();
    return BlocConsumer<NewestBooksCubit, NewestBooksState>(
      listener: (context, state) {
        if (state is NewestBooksSucess) {
          books.addAll(state.books);
        }
        if (state is NewestBooksPaginationFailure ||
            state is NewestBooksFailure) {
          ScaffoldMessenger.of(context).showSnackBar(errorSnackBar());
        }
      },
      builder: (context, state) {
        if (state is NewestBooksSucess ||
            state is NewestBooksFailure ||
            state is NewestBooksPaginationFailure) {
          return NewestBooksListView(
            books: books,
          );
        } else {
          return NewestBooksListViewLoadingIndicator();
        }
      },
    );
  }
}
