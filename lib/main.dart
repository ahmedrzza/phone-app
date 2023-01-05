import 'package:flutter/material.dart';
import 'package:phoneapp/Screens/add_Screen.dart';
import 'package:phoneapp/Screens/bottom.dart';
import 'package:phoneapp/Screens/contact_Screen.dart';
import 'package:phoneapp/Screens/groups.dart';
import 'package:phoneapp/Screens/recent._Screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Bottom(),
    );
  }
}
