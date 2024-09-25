import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'book_rating.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: SizedBox(
        height: 150,
        child: GestureDetector(
          onTap: () {
            GoRouter.of(context).push(AppRouter.kBookDetailsView);
          },
          child: Row(
            children: [
              AspectRatio(
                aspectRatio: 3.1 / 4,
                child: Padding(
                  padding: const EdgeInsets.only(right: 24),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Colors.deepOrange,
                        image: const DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage(Assets.imagesTestGrokkingAlgorithms),
                        )),
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.48,
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Harry Potter and the Goblet of Fire",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontFamily: Assets.fontsGTSectraFineRegular, fontSize: 20),
                      overflow: TextOverflow.ellipsis, //to make the text not to go out of the screen and show {...}
                      maxLines: 2,
                    ),
                    Text(
                      "J.K. Rowling",
                      style: TextStyle(fontFamily: Assets.fontsGTSectraFineRegular, color: Colors.grey),
                    ),
                    BookRating(),

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

