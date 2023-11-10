import 'package:bookly_app/Core/utils/featured_books_loading_card.dart';
import 'package:bookly_app/Core/utils/responsive.dart';
import 'package:flutter/material.dart';

class BooksLoadingCardListView extends StatelessWidget {
  const BooksLoadingCardListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Responsive.screenHeight(context) * 0.255,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: 5,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 7),
            child: booksLoadingCard(),
          );
        },
      ),
    );
  }
}
