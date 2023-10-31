import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

Shimmer loadingCard() {
  return Shimmer.fromColors(
    baseColor: const Color.fromARGB(255, 20, 14, 41),
    highlightColor: const Color(0xFF220E33),
    child: Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 125,
            width: 125,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          const Expanded(
            child: Column(
              children: [
                CustomLoadingCardItem(),
                SizedBox(
                  height: 8,
                ),
                CustomLoadingCardItem(),
                SizedBox(
                  height: 8,
                ),
                CustomLoadingCardItem(),
                SizedBox(
                  height: 8,
                ),
                CustomLoadingCardItem(),
                SizedBox(
                  height: 8,
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}

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
