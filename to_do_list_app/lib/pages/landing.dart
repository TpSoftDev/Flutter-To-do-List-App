import 'package:flutter/material.dart';
import 'package:to_do_list_app/pages/home.dart';
import 'package:to_do_list_app/pages/profile.dart';
import 'package:to_do_list_app/pages/settings.dart';

class LandingPage extends StatelessWidget {
  LandingPage({super.key});

  // variable to store the index of the page
  int index = 0;

  // Create a list of pages
  final List<Widget> pages = [
    HomePage(),
    ProfilePage(),
    SettingsPage(),
  ];

  // function to update the index of the page
  void navigateBottomBar(int index) {
    setState(() {
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Landing Page",
        ),
      ),
      body: pages[index],
      bottomNavigationBar: BottomNavigationBar(
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
