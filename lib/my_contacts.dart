import 'package:flutter/material.dart';
import 'package:mycontactsapp/my_providr.dart';
import 'package:mycontactsapp/social_media_icon.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:tuple/tuple.dart';



// ignore: must_be_immutable
class MyContact extends StatelessWidget {
   MyContact({
    super.key,
  });

  Map<String, String> socialMedia = {
    'facebook.png':
        'https://www.facebook.com/profile.php?id=100015192725107&mibextid=ZbWKwL',
    'instagram.png':
        'https://www.instagram.com/tarek_al_marsafy?igsh=bTQxb3E2dTJsNW82',
    'linkedin.png':
        'https://www.linkedin.com/in/tarek-el-marsafy-92775b259?utm_source=share&utm_campaign=share_via&utm_content=profile&utm_medium=android_app',
    'tiktok.png': 'https://www.tiktok.com/@tarekalmarsafy0?_t=8kU3zFXdstZ&_r=1',
    'twitter.png': 'https://twitter.com/home?lang=ar',
    'whatsapp.png': 'https://wa.me/+201091716644',
    'youtube.png': 'https://www.youtube.com/channel/UCFwokr2JBQhGlUpzhVeVDjQ',
    'Tiktok_Logo.png':
        'https://www.tiktok.com/@tarekalmarsafy0?_t=8kU3zFXdstZ&_r=1',
    'Snapchat-logo.png':
        'https://www.snapchat.com/add/t_elmarsafy?share_id=nzXXP335L1s&locale=ar-EG',
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 3, 7, 30),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        actions: [
          Selector<MyData,Tuple2<String?,String?>>(
            selector: (p0, p1) => Tuple2(p1.getMyIcon(), p1.getMyUrl()),
            builder: (context, value, child) => IconButton(
              icon: value.item1 == null
                  ? const Icon(
                      Icons.phone,
                      color: Colors.white,
                      size: 25,
                    )
                  : CircleAvatar(
                      backgroundColor: Colors.transparent,
                      //radius: 1,
                      backgroundImage:
                          AssetImage('assets/image/${value.item1}'),
                    ),
              onPressed: () {
                value.item2 == null
                    ? launchUrl(
                        Uri.parse('tel:+201091716644'),
                      )
                    : launchUrl(
                        Uri.parse(value.item2!),
                      );
              },
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 80,
            ),
            const CircleAvatar(
              radius: 100,
              backgroundImage: AssetImage('assets/image/tarek.jpeg'),
            ),
            const Text(
              "Tarek El_marsafy",
              style: TextStyle(
                fontSize: 30,
                color: Colors.white,
                fontFamily: 'Marhey-Light',
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "01091716644",
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                  ),
                ),
                IconButton(
                  icon: const Icon(
                    Icons.phone,
                    color: Colors.white,
                    size: 25,
                  ),
                  onPressed: () {
                    launchUrl(
                      Uri.parse('tel:+201091716644'),
                    );
                  },
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
              ),
              itemCount: socialMedia.length,
              itemBuilder: (context, index) {
                return MyIcon(
                  myIcon: socialMedia.keys.toList()[index],
                  myUrl: socialMedia.values.toList()[index],
                );
              },
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
            ),
          ],
        ),
      ),
    );
  }
}
