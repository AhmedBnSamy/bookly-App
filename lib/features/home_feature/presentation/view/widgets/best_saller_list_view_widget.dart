
import 'package:bookly11/core/utils/app_router.dart';
import 'package:bookly11/features/home_feature/data/models/book_model.dart';
import 'package:bookly11/features/home_feature/presentation/view/widgets/custom_book_image.dart';
import 'package:bookly11/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'book_rating.dart';

class BookListViewItem extends StatelessWidget {
  const BookListViewItem({super.key, required this.bookModel, this.rating, this.ratingCount});
final BookModel bookModel;
final int? rating;
final int? ratingCount;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: SizedBox(
        height: 150,
        child: GestureDetector(
          onTap: () {
            GoRouter.of(context).push(AppRouter.kBookDetailsView, extra: bookModel);
          },
          child: Row(
            children: [
             Padding(
               padding: const EdgeInsets.only(right:  20),
               child: CustomBookImage(imageUrl: bookModel.volumeInfo.imageLinks.thumbnail,),
             ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.48,
                child:  Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text( bookModel.volumeInfo.title!,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: Assets.fontsGTSectraFineRegular,
                          fontSize: 20),
                      overflow: TextOverflow
                          .ellipsis, //to make the text not to go out of the screen and show {...}
                      maxLines: 2,
                    ),
                    Text(
                      bookModel.volumeInfo.authors![0],
                      style: TextStyle(
                          fontFamily: Assets.fontsGTSectraFineRegular,
                          color: Colors.grey),
                    ),
                    BookRating(
                      price: 'Free',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
