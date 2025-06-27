import 'package:bookly11/core/widget/books_action_button.dart';
import 'package:bookly11/features/home_feature/data/models/book_model.dart';
import 'package:flutter/material.dart';
import 'book_details_down_section.dart';
import 'book_details_up_section.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key, required this.bookModel});
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return  CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                BookDetailsUpSection(
                  bookModel: bookModel,
                ),
                ButtonBooksAction(
                  bookModel: bookModel,
                ),
                Expanded(
                  child: SizedBox(
                    height: 45,
                  ),
                ),
                BookDetailsDownSection(),
              ],
            ),
          ),
        )
      ],
    );
  }
}
