import 'package:flutter/material.dart';
import 'pages/home.dart';
import 'pages/profile.dart';
import 'pages/settings.dart';

// This is the entry point of the Flutter application
void main() {
  // runApp is a Flutter function that initializes and runs the app
  // It takes a widget (MyApp in this case) as the root of the widget tree
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This is a constructor for MyApp
  // super.key passes the key parameter to the parent StatelessWidget class
  // const makes this a compile-time constant which improves performance
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:
          false, // Removes the debug banner from top-right
      theme: ThemeData(
        // Define your global AppBar theme
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.red[400],
          titleTextStyle: TextStyle(fontSize: 20),
        ),
        // You can add other global theme properties here
        // For example:
        // buttonTheme: ButtonThemeData(...),
        // colorScheme: ColorScheme(...),
        // textTheme: TextTheme(...),
      ),
      home: HomePage(),
      routes: {
        //Routes used to navigate between pages
        '/home': (context) => HomePage(),
        '/profile': (context) => ProfilePage(),
        '/settings': (context) => SettingsPage(),
      },
    );
  }
}
