import 'package:bookly/features/home_feature/presentation/view/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class FeaturedBooksListViewImage extends StatelessWidget {
  const FeaturedBooksListViewImage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:  MediaQuery.of(context).size.height * 0.2,
      child: ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.only(right: 24),
            child: CustomBookImage(),
          );
        },
      ),
    );
  }
}

