import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Profile Page",
        ),
        backgroundColor: const Color.fromARGB(255, 220, 87, 87),
      ),
    );
  }
}
