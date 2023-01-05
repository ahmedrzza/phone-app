import 'package:flutter/material.dart';
import 'package:phoneapp/Screens/contact_Screen.dart';
import 'package:phoneapp/Screens/groups.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class RecentScreen extends StatefulWidget {
  const RecentScreen({super.key});

  @override
  State<RecentScreen> createState() => _RecentScreenState();
}

class _RecentScreenState extends State<RecentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'All',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Missed',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                Icon(
                  Icons.search,
                  size: 30,
                )
              ],
            ),
          ],
        ),
      ),
      // bottomNavigationBar: GNav(tabs: tabs),
      // bottomNavigationBar: BottomNavigationBar(
      //     currentIndex: currentscreen,
      //     onTap: (index) => setState(() {
      //           currentscreen = index;
      //         }),
      //     items: [
      //       BottomNavigationBarItem(
      //           icon: Icon(Icons.punch_clock), label: 'Recent'),
      //       BottomNavigationBarItem(
      //           icon: Icon(Icons.punch_clock), label: 'Contacts'),
      //       BottomNavigationBarItem(
      //           icon: Icon(Icons.punch_clock), label: 'Groups'),
      //     ]),
      // bottomNavigationBar: NavigationBarTheme(
      //   data: NavigationBarThemeData(
      //       indicatorColor: Colors.blue[100],
      //       labelTextStyle: MaterialStateProperty.all(
      //           TextStyle(fontSize: 14, fontWeight: FontWeight.w500))),
      //   child: NavigationBar(
      //     backgroundColor: Colors.white,
      //     height: 60,
      //     selectedIndex: screen,
      //     onDestinationSelected: (screen) => setState(() {
      //       this.screen = screen;
      //     }),
      //     destinations: [
      //       NavigationDestination(
      //           icon: Icon(Icons.punch_clock), label: 'Recent'),
      //       NavigationDestination(
      //           icon: Icon(Icons.contact_page_outlined), label: 'Contacts'),
      //       NavigationDestination(icon: Icon(Icons.star), label: 'Groups'),
      //     ],
      //   ),
      // ),
    );
  }
}
