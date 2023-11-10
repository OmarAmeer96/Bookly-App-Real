import 'package:bookly_app/Core/widgets/custom_button.dart';
import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BooksActions extends StatelessWidget {
  const BooksActions({
    super.key,
    required this.bookModel,
  });

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        children: [
          const Expanded(
            child: CustomButton(
              backgroundColor: Colors.white,
              textColor: Colors.black,
              text: 'Free',
              fontSize: 20,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(16),
                topLeft: Radius.circular(16),
              ),
            ),
          ),
          Expanded(
            child: CustomButton(
              onPressed: () async {
                Uri uri = Uri.parse(bookModel.volumeInfo.previewLink!);
                if (await canLaunchUrl(uri)) {
                  launchUrl(uri);
                } else {
                  throw Exception('Could not launch $uri');
                }
              },
              backgroundColor: kButtonColor,
              textColor: Colors.white,
              text: 'Peview',
              borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(16),
                topRight: Radius.circular(16),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
