import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Home Page",
          ),
        ),
        drawer: Drawer(
          backgroundColor: Colors.red[200],
          child: Column(
            children: [
              DrawerHeader(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    //Icon(Icons.home,size: 50,),
                    SizedBox(width: 10),
                    Text(" M E N U"),
                  ],
                ),
              ),
              // Home page list tile
              ListTile(
                leading: Icon(Icons.home),
                title: Text("H O M E"),
                onTap: () {
                  Navigator.pushNamed(context, '/home');
                },
              ),

              // Profile page list tile
              ListTile(
                leading: Icon(Icons.person),
                title: Text("P R O F I L E"),
                onTap: () {
                  // pop the drawer first then navigate to the settings page
                  Navigator.pop(context);
                  // Navigate to the Profile page
                  Navigator.pushNamed(context, '/profile');
                },
              ),

              // Settings page list tile
              ListTile(
                leading: Icon(Icons.settings),
                title: Text("S E T T I N G S"),
                onTap: () {
                  // pop the drawer first then navigate to the settings page
                  Navigator.pop(context);
                  // Navigate to the Settings page
                  Navigator.pushNamed(context, '/settings');
                },
              ),
            ],
          ),
        ));
  }
}
