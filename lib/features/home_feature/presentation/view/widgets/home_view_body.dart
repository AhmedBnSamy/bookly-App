import 'package:bookly11/features/home_feature/presentation/view/widgets/featured_list_view_image.dart';
import 'package:bookly11/generated/assets.dart';
import 'package:flutter/material.dart';
import 'best_saller_view.dart';
import 'custom_app_bar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(20),
      child: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomAppBar(),
                FeaturedBooksListViewImage(),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "Newest Books",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontFamily: Assets.fontsGTSectraFineRegular,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
              ],
            ),
          ),
          SliverFillRemaining(
            child: BestSellerListView(),
          ),
        ],
      ),
    );
  }
}
