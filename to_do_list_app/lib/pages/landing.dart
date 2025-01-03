import 'package:flutter/material.dart';
import 'package:to_do_list_app/pages/home.dart';
import 'package:to_do_list_app/pages/profile.dart';
import 'package:to_do_list_app/pages/settings.dart';

class LandingPage extends StatefulWidget {
  LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  // variable to store the selectedIndex of the page
  int selectedIndex = 0;

  // Create a list of pages
  final List<Widget> pages = [
    HomePage(),
    ProfilePage(),
    SettingsPage(),
  ];

  // function to update the selectedIndex of the page
  void navigateBottomBar(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Landing Page",
        ),
      ),
      body: pages[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: navigateBottomBar,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: "Settings"),
        ],
      ),
    );
  }
}
