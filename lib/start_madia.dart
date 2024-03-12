import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class StartMadia extends StatelessWidget {
  final String MediaUrl;
  const StartMadia({required this.MediaUrl, super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 3, 7, 30),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
        ),
        body: Center(
          child: ElevatedButton(
            style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.deepOrange)),
            onPressed: () {
              launchUrl(Uri.parse(MediaUrl));
            },
            child: const Text(
              "Start Madia",
              style: TextStyle(fontSize: 35, color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
