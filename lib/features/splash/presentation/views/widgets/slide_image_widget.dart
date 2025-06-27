import 'package:flutter/material.dart';

import '../../../../../generated/assets.dart';

class SlidingImage extends StatelessWidget {
  const SlidingImage({
    super.key,
    required this.slidingAnimation2,
  });

  final Animation<Offset> slidingAnimation2;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: slidingAnimation2,
        builder: (context, _) {
          return SlideTransition(
            position: slidingAnimation2,
            child: Image.asset(Assets.imagesLogo),
          );
        });
  }
}
