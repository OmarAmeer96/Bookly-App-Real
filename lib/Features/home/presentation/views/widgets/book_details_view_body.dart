import 'package:bookly_app/Core/utils/responsive.dart';
import 'package:bookly_app/Core/utils/styles.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/books_actions.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/custom_book_image.dart.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/similar_books_list_view.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            children: [
              const CustomBookDetailsAppBar(),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: Responsive.screenWidth(context) * 0.28,
                ),
                child: const CustomBookImage(),
              ),
              const SizedBox(
                height: 43,
              ),
              Text(
                'King Kong Book',
                style: Styles.gtSectraFineRegular.copyWith(
                  fontSize: 34,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Opacity(
                opacity: 0.6,
                child: Text(
                  'Omar Ameer',
                  style: Styles.montserratMedium.copyWith(
                    fontSize: 22,
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              const BookRating(
                mainAxisAlignment: MainAxisAlignment.center,
              ),
              const SizedBox(
                height: 37,
              ),
              const BooksActions(),
              const Expanded(
                child: SizedBox(
                  height: 43,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'You may also like',
                    style: Styles.montserratSemiBold.copyWith(
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              SizedBox(
                height: Responsive.screenHeight(context) * 0.15,
                child: const SimilarBooksListView(),
              ),
              const SizedBox(
                height: 27,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
