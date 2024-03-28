import 'package:flutter/material.dart';
import 'package:mycontactsapp/my_providr.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

class MyIcon extends StatelessWidget {
  final String myIcon, myUrl;
  const MyIcon({super.key, required this.myIcon, required this.myUrl});

  @override
  Widget build(BuildContext context) {
    return Consumer<MyData>(
      builder: (context, value, child) => InkWell(
        onDoubleTap: () {
          value.getBading() == 50 ? value.setBading(20) : value.setBading(50);
        },
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: InkWell(
            child: CircleAvatar(
              backgroundColor: Colors.transparent,
              //radius: value.getBading() as double,
              backgroundImage: AssetImage('assets/image/$myIcon'),
            ),
            onTap: () {
              launchUrl(
                Uri.parse(myUrl),
              );

              value.setMyUrl(myUrl);
              value.setMyIcon(myIcon);
            },
          ),
        ),
      ),
    );
  }
}
