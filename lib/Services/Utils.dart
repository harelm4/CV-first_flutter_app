import 'package:flutter/cupertino.dart';
import 'package:url_launcher/url_launcher.dart';

class Utils {
  // ignore: invalid_required_positional_param
  static Future openLink(@required String url) => _launchUrl(url);
  static _launchUrl(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      print("cant launch $url");
    }
  }

  // ignore: non_constant_identifier_names
  static Future openEmail(
      String email_address, String subject, String body) async {
    final url =
        'mailto:$email_address?subject=${Uri.encodeFull(subject)}&body=${Uri.encodeFull(body)}';

    await _launchUrl(url);
  }

  // ignore: invalid_required_positional_param
  // ignore: non_constant_identifier_names
  // ignore: invalid_required_positional_param
  // ignore: non_constant_identifier_names
  // ignore: invalid_required_positional_param
  // ignore: non_constant_identifier_names
  // ignore: invalid_required_positional_param
  static Future openPhone(@required String phone_number) async {
    final url = "tel:+972$phone_number";
    await _launchUrl(url);
  }

  // ignore: non_constant_identifier_names
  // ignore: invalid_required_positional_param
  static Future sendWhatsApp(
      @required String phone_number, String message) async {
    final url = "whatsapp://send?phone=+972$phone_number&text=$message";
    await _launchUrl(url);
  }

  static double degToRad(double deg) {
    double u = 57.2957;
    return deg / u;
  }

  static double getScreenWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  static double getScreenHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }
}
