import 'package:bookly_app/Core/utils/styles.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({
    super.key,
    required this.imageUrl,
  });

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ClipRRect(
        borderRadius: BorderRadiusDirectional.circular(16),
        child: AspectRatio(
          aspectRatio: 150 / 224,
          child: CachedNetworkImage(
            imageUrl: imageUrl,
            fit: BoxFit.fill,
            errorWidget: (context, url, error) => Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.error_outline,
                    size: 24,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Text(
                    "Couldn't Load the Book 😢",
                    textAlign: TextAlign.center,
                    style: Styles.montserratSemiBold.copyWith(fontSize: 16),
                  ),
                ],
              ),
            ),
          ),
          // Container(
          //   decoration: BoxDecoration(
          //     image: DecorationImage(
          //       image: NetworkImage(imageUrl),
          //       fit: BoxFit.fill,
          //     ),
          //     borderRadius: BorderRadius.circular(18),
          //   ),
          // ),
        ),
      ),
    );
  }
}
