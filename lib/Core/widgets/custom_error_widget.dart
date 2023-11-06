import 'package:bookly_app/Core/utils/responsive.dart';
import 'package:bookly_app/Core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget({super.key, required this.errMessage});

  final String errMessage;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      width: Responsive.screenWidth(context),
      child: Center(
        child: Text(
          errMessage,
          style: Styles.montserratMedium.copyWith(fontSize: 18),
        ),
      ),
    );
  }
}
