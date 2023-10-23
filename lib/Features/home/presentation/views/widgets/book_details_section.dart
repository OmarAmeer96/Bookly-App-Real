import 'package:bookly_app/Core/utils/responsive.dart';
import 'package:bookly_app/Core/utils/styles.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/books_actions.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/custom_book_image.dart.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
      ],
    );
  }
}
