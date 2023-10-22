import 'package:bookly_app/Core/utils/assets.dart';
import 'package:bookly_app/Core/utils/responsive.dart';
import 'package:bookly_app/Core/utils/styles.dart';
import 'package:bookly_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
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
        Text(
          "(2390)",
          style: Styles.montserratRegular.copyWith(
            color: kTextColor1,
          ),
        ),
      ],
    );
  }
}
