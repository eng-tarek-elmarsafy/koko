import 'package:flutter/material.dart';
import 'package:mycontactsapp/my_contacts.dart';
import 'package:mycontactsapp/my_providr.dart';
import 'package:provider/provider.dart';

void main() => runApp(const ContactsApp());

class ContactsApp extends StatelessWidget {
  const ContactsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MyData(),
      child:  MaterialApp(
        debugShowCheckedModeBanner: false,
        home:  MyContact(),
      ),
    );
  }
}
