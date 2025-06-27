
import 'package:bookly11/features/home_feature/data/models/book_model.dart';
import 'package:bookly11/generated/assets.dart';
import 'package:flutter/material.dart';

import 'book_rating.dart';
import 'custom_book_details_app_bar.dart';
import 'custom_book_image.dart';

class BookDetailsUpSection extends StatelessWidget {
  const BookDetailsUpSection({super.key, required this.bookModel});
final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const CustomBookDetailsAppBar(),
        const SizedBox(
          height: 40,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.3,
          child:  CustomBookImage(
            imageUrl: bookModel.volumeInfo.imageLinks.thumbnail ),
        ),
        const SizedBox(
          height: 40,
        ),
         Text(
          bookModel.volumeInfo.title!,
          style: TextStyle(
            fontFamily: Assets.fontsGTSectraFineRegular,
            fontSize: 30,
            color: Colors.white,
          ),
        ),
         Text(
          bookModel.volumeInfo.authors![0],
          style: TextStyle(
            fontFamily: Assets.fontsGTSectraFineRegular,
            fontSize: 20,
            color: Colors.grey,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        const Center(
          child: SizedBox(
            width: 170,
            child: BookRating(
              price: '19.99 \$',
            ),
          ),
        ),
        const SizedBox(
          height: 37,
        ),
      ],
    );
  }
}
