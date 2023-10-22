import 'package:bookly_app/Core/utils/styles.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/best_seller_list_view.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/featured_books_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomAppBar(),
        Padding(
          padding: EdgeInsets.only(left: 16, right: 16, top: 16),
          child: Column(
            children: [
              FeaturedBooksListView(),
              SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  Text(
                    "Best Seller",
                    style: Styles.montserratSemiBold,
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              BestSellerListView(),
            ],
          ),
        ),
      ],
    );
  }
}
