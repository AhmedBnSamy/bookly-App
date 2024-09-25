import 'package:bookly/features/home_feature/presentation/view/widgets/book_rating.dart';
import 'package:bookly/features/home_feature/presentation/view/widgets/custom_book_image.dart';
import 'package:bookly/generated/assets.dart';
import 'package:flutter/material.dart';

import 'custom_book_details_app_bar.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:
      const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          const CustomBookDetailsAppBar(),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.3,
            child: const CustomBookImage(),
          ),
          const SizedBox(
            height: 40,
          ),
          const Text(
            'The Jungle Book',
            style: TextStyle(
              fontFamily: Assets.fontsGTSectraFineRegular,
              fontSize: 35,
              color: Colors.white,
            ),
          ),
          const Text(
            'Rudyard Kipling',
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
              width: 150,
              child: BookRating(),
            ),
          ),
        ],
      ),
    );
  }
}
