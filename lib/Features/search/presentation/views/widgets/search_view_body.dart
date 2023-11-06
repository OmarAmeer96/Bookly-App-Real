import 'package:bookly_app/Core/utils/styles.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/best_seller_list_view_item.dart';
import 'package:bookly_app/Features/search/presentation/views/widgets/custom_search_text_field.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        const SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.only(
              top: 30,
              left: 20,
              right: 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomSearchTextField(),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "Search Results",
                  style: Styles.montserratSemiBold,
                ),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        ),
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
