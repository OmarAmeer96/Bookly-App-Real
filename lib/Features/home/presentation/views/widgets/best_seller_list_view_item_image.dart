import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class BestSellerListViewItemImage extends StatelessWidget {
  const BestSellerListViewItemImage({
    super.key,
    required this.imageUrl,
  });

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 70 / 105,
      child: ClipRRect(
        borderRadius: BorderRadiusDirectional.circular(18),
        child: CachedNetworkImage(
          imageUrl: imageUrl,
        ),
      ),
    );
  }
}
