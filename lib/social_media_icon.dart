import 'package:flutter/material.dart';
import 'package:mycontactsapp/start_madia.dart';
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
          showModalBottomSheet(
            context: context,
            builder: (context) {
              return ElevatedButton(
                style: const ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll(Colors.deepOrange),),
                onPressed: () {
                  launchUrl(Uri.parse(MediaUrl));
                },
                child: const Text(
                  "Start Madia",
                  style: TextStyle(fontSize: 35, color: Colors.white),
                ),
              );
            },
          );
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(
          //     builder: (context) => StartMadia(MediaUrl: MediaUrl),
          //   ),
          //);
        },
      ),
    );
  }
}
