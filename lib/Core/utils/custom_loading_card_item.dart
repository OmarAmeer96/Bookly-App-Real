import 'package:flutter/material.dart';

class CustomLoadingCardItem extends StatelessWidget {
  const CustomLoadingCardItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 16,
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(4),
      ),
    );
  }
}