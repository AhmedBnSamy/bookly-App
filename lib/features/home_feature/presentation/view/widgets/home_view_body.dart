import 'package:bookly/features/home_feature/presentation/view/widgets/featured_list_view_image.dart';
import 'package:bookly/generated/assets.dart';
import 'package:flutter/material.dart';
import 'best_saller_list_view_widget.dart';
import 'custom_app_bar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(30),
      child: CustomScrollView(
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
                  "Best Seller",
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

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      itemCount: 5,
      itemBuilder: (context, index) {
        return const BestSellerListViewItem();
      },
    );
  }
}
