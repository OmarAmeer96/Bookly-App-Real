import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

Shimmer booksLoadingCard() {
  return Shimmer.fromColors(
    baseColor: const Color.fromARGB(255, 20, 14, 41),
    highlightColor: const Color(0xFF220E33),
    child: Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: AspectRatio(
              aspectRatio: 2 / 3,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
        ],
      ),
    ),
  );
}
