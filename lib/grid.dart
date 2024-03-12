import 'package:flutter/material.dart';
import 'package:mycontactsapp/social_media_icon.dart';

class GridsoCialMedia extends StatelessWidget {
  const GridsoCialMedia({
    super.key,
    required this.socialMedia,
  });

  final Map<String, String> socialMedia;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
      ),
      itemCount: socialMedia.length,
      itemBuilder: (context, index) {
        return SocialMediaIcon(
          MediaIcon: socialMedia.keys.toList()[index],
          MediaUrl: socialMedia.values.toList()[index],
        );
      },
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
    );
  }
}
