import 'package:bookly11/generated/assets.dart';
import 'package:flutter/material.dart';

class BookRating extends StatelessWidget {
  const BookRating({
    super.key,
    this.price,
  });
  final String? price;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "$price",
          style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontFamily: Assets.fontsGTSectraFineRegular,
              color: Colors.white),
        ), //19.99
        const Spacer(),
        const Icon(
          Icons.star,
          color: Colors.yellow,
        ),
        const Text(
          " 4.9 ",
          style: TextStyle(
              fontFamily: Assets.fontsGTSectraFineRegular, color: Colors.white),
        ),
        const Text(
          "(2390)",
          style: TextStyle(fontFamily: Assets.fontsGTSectraFineRegular),
        ),
      ],
    );
  }
}
