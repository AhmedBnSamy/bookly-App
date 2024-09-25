import 'package:bookly/generated/assets.dart';
import 'package:flutter/material.dart';

class BookRating extends StatelessWidget {
  const BookRating({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text(
          "19.99 \$",
          style:
              TextStyle(fontWeight: FontWeight.bold, fontFamily: Assets.fontsGTSectraFineRegular, color: Colors.white),
        ), //19.99
        Spacer(),
        Icon(
          Icons.star,
          color: Colors.yellow,
        ),
        Text(
          " 4.9 ",
          style: TextStyle(fontFamily: Assets.fontsGTSectraFineRegular, color: Colors.white),
        ),
        Text(
          "(2390)",
          style: TextStyle(fontFamily: Assets.fontsGTSectraFineRegular),
        ),
      ],
    );
  }
}
