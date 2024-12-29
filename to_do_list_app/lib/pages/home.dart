import 'package:flutter/material.dart';
import 'profile.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page",),
        backgroundColor: const Color.fromARGB(255, 220, 87, 87),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navigate to the Profile page
            Navigator.pushNamed(context, '/profile');
          },
          child: Text("Go Profile Page "),
        ),
      ),
    );
  }
}
