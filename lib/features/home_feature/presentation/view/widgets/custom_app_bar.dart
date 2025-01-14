
import 'package:bookly/generated/assets.dart';
import 'package:flutter/material.dart';


class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only( top: 50, bottom: 16),
      child: Row(
        children: [
          Image.asset(
            Assets.imagesLogo,
            height: 18,
          ),
          const Spacer(),
          IconButton(
            onPressed: () {},
            icon:  const Icon(Icons.search,size: 32,color: Colors.white,),
          ),
        ],
      ),
    );
  }
}
