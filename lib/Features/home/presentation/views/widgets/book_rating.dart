import 'package:bookly_app/Core/utils/assets.dart';
import 'package:bookly_app/Core/utils/responsive.dart';
import 'package:bookly_app/Core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BookRating extends StatelessWidget {
  const BookRating({
    super.key,
    this.mainAxisAlignment = MainAxisAlignment.start,
  });

  final MainAxisAlignment mainAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        SvgPicture.asset(
          AssetsData.star,
          width: 18,
        ),
        SizedBox(
          width: Responsive.screenWidth(context) * 0.014,
        ),
        const Text(
          "4.8",
          style: Styles.montserratMedium,
        ),
        SizedBox(
          width: Responsive.screenWidth(context) * 0.012,
        ),
        Opacity(
          opacity: 0.5,
          child: Text(
            "(2390)",
            style: Styles.montserratRegular.copyWith(),
          ),
        ),
      ],
    );
  }
}
