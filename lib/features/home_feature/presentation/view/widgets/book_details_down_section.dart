import 'package:bookly11/generated/assets.dart';
import 'package:flutter/material.dart';

import 'SimilarBooksListView.dart';

class BookDetailsDownSection extends StatelessWidget {
  const BookDetailsDownSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "You can also like",
          style: TextStyle(
            fontFamily: Assets.fontsGTSectraFineRegular,
            fontSize: 21,
            color: Colors.white,
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.01,
        ),
        const SimilarBooksListView(),
      ],
    );
  }
}
