import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialMediaIcon extends StatelessWidget {
  final String MediaIcon;
  final String MediaUrl;
  const SocialMediaIcon({
    required this.MediaIcon,
    required this.MediaUrl,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: InkWell(
        child: CircleAvatar(
          backgroundColor: Colors.transparent,
          //radius: 1,
          backgroundImage: AssetImage('assets/image/$MediaIcon'),
        ),
        onTap: () {
          launchUrl(Uri.parse(MediaUrl),);
        },
      ),
    );
  }
}
