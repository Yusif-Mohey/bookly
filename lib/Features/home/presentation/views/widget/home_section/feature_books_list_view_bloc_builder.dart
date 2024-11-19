import 'package:bookly/Features/home/presentation/manager/feature_books_cubit/feature_books_cubit.dart';
import 'package:bookly/Features/home/presentation/views/widget/home_section/featured_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedBooksListViewBlocBuilder extends StatelessWidget {
  const FeaturedBooksListViewBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeatureBooksCubit, FeatureBooksState>(
      builder: (context, state) {
        if (state is FeatureBooksSucess) {
          return FeaturedBooksListView();
        } else if (state is FeatureBooksFaluire) {
          // ignore: avoid_print
          print(state.errMessage.toString());
          return Text(state.errMessage);
        } else if (state is FeatureBooksInitial) {
          return Text(state.toString());
        } else {
          return CircularProgressIndicator();
        }
      },
    );
  }
}
