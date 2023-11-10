import 'package:bookly_app/Core/widgets/show_error_snack_bar.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> customUrlLauncher(context, String? url) async {
  if (url != null) {
    Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      launchUrl(uri);
    } else {
      showErrorSnackBar(
        context,
        "Could not launch $url",
      );
    }
  } else {
    // I will not do anything here, because I've already handled this part in the books_actions.dart file.
  }
}
