import 'package:flutter/material.dart';
import 'package:mycontactsapp/my_contacts.dart';

void main() => runApp(const ContactsApp());

class ContactsApp extends StatelessWidget {
  const ContactsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MyContact();
  }
}
