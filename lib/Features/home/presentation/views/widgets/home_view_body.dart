import 'package:bookly_app/Core/utils/styles.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/best_seller_list_view_item.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/custom_home_app_bar.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/featured_books_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        const SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 16),
                child: CustomHomeAppBar(),
              ),
              FeaturedBooksListView(),
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "Best Seller",
                  style: Styles.montserratSemiBold,
                ),
              ),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
        /*
        THE SLIVER LIST WAS LIKE THIS:
        SliverFillRemaining(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: BestSellerListView(),
          ),
        ),

        =======================================================

        AND THIS IS THE BEST SELLER LIST VIEW FILE:
        class BestSellerListView extends StatelessWidget {
          const BestSellerListView({super.key});
          @override
          Widget build(BuildContext context) {
            return SizedBox(
              child: ListView.builder(
                padding: EdgeInsets.zero,
                itemCount: 10,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return const Padding(
                    padding: EdgeInsets.only(bottom: 20),
                    child: BestSellerListViewItem(),
                  );
                },
              ),
            );
          }
        }
        */
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return const Padding(
                padding: EdgeInsets.only(bottom: 20),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: BestSellerListViewItem(),
                ),
              );
            },
            childCount: 10,
          ),
        ),
      ],
    );
  }
}
