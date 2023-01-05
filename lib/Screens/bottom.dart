import 'package:flutter/material.dart';
import 'package:phoneapp/Screens/contact_Screen.dart';
import 'package:phoneapp/Screens/groups.dart';
import 'package:phoneapp/Screens/recent._Screen.dart';

class Bottom extends StatefulWidget {
  const Bottom({super.key});

  @override
  State<Bottom> createState() => _BottomState();
}

class _BottomState extends State<Bottom> {
  List pages = [RecentScreen(), ContactScreen(), Groups()];
  int currentindex = 0;
  ontap(int index) {
    setState(() {
      currentindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentindex],
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey.withOpacity(0.5),
          currentIndex: currentindex,
          showUnselectedLabels: true,
          elevation: 0,
          onTap: ontap,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.punch_clock), label: 'Recent'),
            BottomNavigationBarItem(
                icon: Icon(Icons.punch_clock), label: 'Contacts'),
            BottomNavigationBarItem(icon: Icon(Icons.star), label: 'Groups'),
          ]),
    );
  }
}
