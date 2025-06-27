import 'package:bookly11/generated/assets.dart';
import 'package:flutter/material.dart';

class SlidingText extends StatelessWidget {
  const SlidingText({
    super.key,
    required this.slidingAnimation1,
  });

  final Animation<Offset> slidingAnimation1;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: slidingAnimation1,
        builder: (context, _) {
          return SlideTransition(
            position: slidingAnimation1,
            child: const Text(
              'Read Free Books',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
                fontFamily: Assets.fontsGTSectraFineRegular,
                fontWeight: FontWeight.bold,
              ),
            ),
          );
        });
  }
}
