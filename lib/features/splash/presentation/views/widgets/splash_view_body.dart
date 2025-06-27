import 'package:bookly11/core/utils/app_router.dart';
import 'package:bookly11/features/splash/presentation/views/widgets/slide_image_widget.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'slide_text_widget.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation1; //for text
  late Animation<Offset> slidingAnimation2; //for image
  @override
  void initState() {
    super.initState();

    initSlidingAnimation();
    navigateToHome();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SlidingImage(slidingAnimation2: slidingAnimation2),
        SlidingText(slidingAnimation1: slidingAnimation1),
      ],
    );
  }

  //some functions for animation and navigation
  void navigateToHome() {
    Future.delayed(
      const Duration(seconds: 3),
      () {
        // Get.to(
        //       () => const HomePage(),
        //   transition: Transition.rightToLeft,
        //   duration: kTransitionDuration,
        // );
        GoRouter.of(context).push(AppRouter.kHomeView);
      },
    );
  }

  void initSlidingAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    slidingAnimation1 =
        Tween<Offset>(begin: const Offset(0, 10), end: const Offset(0, 0))
            .animate(animationController);
    animationController.forward();

    slidingAnimation2 =
        Tween<Offset>(begin: const Offset(0, -3), end: const Offset(0, 0))
            .animate(animationController);
    animationController.forward();
  }
}
