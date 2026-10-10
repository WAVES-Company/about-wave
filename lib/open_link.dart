import 'package:flutter/foundation.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:web/web.dart' as web;

void openSiteLink(String urlString) {
  if (kIsWeb) {
    web.window.open(urlString, '_blank');
  } else {
    launchUrl(
      Uri.parse(urlString),
      mode: LaunchMode.externalApplication,
    );
  }
}

//WAVES
