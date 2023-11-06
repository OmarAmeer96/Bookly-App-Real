import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class BestSellerListViewItemImage extends StatelessWidget {
  const BestSellerListViewItemImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 70 / 105,
      child: ClipRRect(
        borderRadius: BorderRadiusDirectional.circular(18),
        child: CachedNetworkImage(
          imageUrl: "https://cdn-images-1.medium.com/v2/resize:fit:1200/1*5-aoK8IBmXve5whBQM90GA.png",
        ),
      ),
    );
  }
}
