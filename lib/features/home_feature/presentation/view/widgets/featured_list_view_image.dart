import 'package:bookly11/core/utils/app_router.dart';
import 'package:bookly11/core/widget/error_message.dart';
import 'package:bookly11/features/home_feature/presentation/view/widgets/custom_book_image.dart';
import 'package:bookly11/features/home_feature/presentation/view_model/featured_books_cubit/featured_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/widget/custom_circlorIndicator.dart';

class FeaturedBooksListViewImage extends StatelessWidget {
  const FeaturedBooksListViewImage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.2,
            child: ListView.builder(
              itemCount: state.books.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only(right: 24),
                  child: GestureDetector(
                    onTap: () {
                      GoRouter.of(context).push(
                        AppRouter.kBookDetailsView,
                        extra: state.books[index],
                      );
                    },
                    child: CustomBookImage(
                      imageUrl:
                          state.books[index].volumeInfo.imageLinks.thumbnail,
                    ),
                  ),
                );
              },
            ),
          );
        } else if (state is FeaturedBooksFailure) {
          print(state.errMessage);
          return CustomErrorMessage(
            errMessage: state.errMessage,
          );
        } else {
          return CustomCircularIndicator();
        }
      },
    );
  }
}
