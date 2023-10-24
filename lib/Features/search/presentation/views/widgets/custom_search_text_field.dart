import 'package:bookly_app/Core/utils/assets.dart';
import 'package:bookly_app/Core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: Styles.montserratSemiBold.copyWith(
        fontSize: 16,
      ),
      decoration: InputDecoration(
        floatingLabelStyle: Styles.montserratMedium.copyWith(
          fontSize: 16,
          color: Colors.white,
        ),
        labelText: 'Search',
        labelStyle: Styles.montserratBold.copyWith(
          fontSize: 16,
        ),
        border: buildOutlineInputBorder(),
        focusedBorder: buildOutlineInputBorder(width: 2.5),
        enabledBorder: buildOutlineInputBorder(),
        hintText: 'King Kong Book...',
        suffixIcon: Opacity(
          opacity: 0.7,
          child: IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              AssetsData.searchIcon,
              width: 20,
            ),
          ),
        ),
      ),
    );
  }

  OutlineInputBorder buildOutlineInputBorder({double width = 1.0}) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(15),
      borderSide: BorderSide(
        color: Colors.white,
        width: width,
      ),
    );
  }
}
