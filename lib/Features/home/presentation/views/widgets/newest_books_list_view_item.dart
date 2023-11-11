import 'package:bookly_app/Core/utils/app_router.dart';
import 'package:bookly_app/Core/utils/responsive.dart';
import 'package:bookly_app/Core/utils/styles.dart';
import 'package:bookly_app/Core/models/book_model/book_model.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/custom_book_image.dart.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NewestBooksListViewItem extends StatelessWidget {
  const NewestBooksListViewItem({
    super.key,
    required this.bookModel,
  });

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        GoRouter.of(context).push(
          AppRouter.kBookDetailsView,
          extra: bookModel,
        );
      },
      child: SizedBox(
        height: Responsive.screenHeight(context) * 0.163,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CustomBookImage(
              imageUrl: bookModel.volumeInfo.imageLinks?.thumbnail ?? '',
            ),
            SizedBox(
              width: Responsive.screenWidth(context) * 0.08,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: Responsive.screenWidth(context) * 0.59,
                    child: Text(
                      bookModel.volumeInfo.title,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Styles.gtSectraFineRegular,
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  SizedBox(
                    width: Responsive.screenWidth(context) * 0.59,
                    child: Opacity(
                      opacity: 0.6,
                      child: Text(
                        bookModel.volumeInfo.publisher,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: Styles.montserratMedium,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  SizedBox(
                    width: Responsive.screenWidth(context) * 0.61,
                    child: Row(
                      children: [
                        const Text(
                          "Free",
                          style: Styles.montserratBold,
                        ),
                        SizedBox(
                          width: Responsive.screenWidth(context) * 0.08,
                        ),
                        BookRating(
                          rating:
                              bookModel.volumeInfo.averageRating?.round() ?? 0,
                          count: bookModel.volumeInfo.ratingsCount ?? 0,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
