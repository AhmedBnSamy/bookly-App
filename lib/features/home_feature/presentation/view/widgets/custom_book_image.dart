import 'package:bookly/generated/assets.dart';
import 'package:flutter/material.dart';


class CustomBookImage extends StatelessWidget {
  const CustomBookImage({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.8 / 4,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.deepOrange,
            image: const DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(Assets.imagesTestGrokkingAlgorithms),
            )
        ),
      ),
    );
  }
}
