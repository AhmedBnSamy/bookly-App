import 'package:bookly11/core/utils/app_router.dart';
import 'package:bookly11/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50, bottom: 16),
      child: Row(
        children: [
          Image.asset(
            Assets.imagesLogo,
            height: 18,
          ),
          const Spacer(),
          IconButton(
            onPressed: () {
              GoRouter.of(context).push(AppRouter.kSearchView);
            },
            icon: const Icon(
              Icons.search,
              size: 32,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
