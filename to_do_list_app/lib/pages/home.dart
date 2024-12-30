import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page",),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton( 
              onPressed: () {
                // Navigate to the Profile page
                Navigator.pushNamed(context, '/profile');
              },
              child: Text("Go Profile Page "),
              ),
          SizedBox(height: 20),
          ElevatedButton( 
              onPressed: () {
                // Navigate to the Profile page
                Navigator.pushNamed(context, '/settings');
              },
              child: Text("Go Settings Page "),
            ),
          ],
        ),
      ),
    );
  }
}
