import 'package:flutter/material.dart';

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
      home: Scaffold(
        // Scaffold: Provides the basic visual structure for the app
        backgroundColor:
            const Color.fromARGB(255, 212, 69, 69), // Red background
        body: Center(
          // Centers everything inside it
          child: Container(
            height: 300, // Fixed height of container
            width: 300, // Fixed width of container
            decoration: BoxDecoration(
              color:
                  const Color.fromARGB(255, 255, 255, 255), // White background
              borderRadius: BorderRadius.circular(20), // Rounded corners
            ),
            padding: EdgeInsets.all(25), // Adds 25px padding on all sides
            child: Column(
              // Arranges children vertically
              children: [
                Text(" Thabang Pila ", // Display text
                    style: TextStyle(
                      fontSize: 20, // Text size
                      fontWeight: FontWeight.bold, // Makes text bold
                      color: Colors.black, // Text color
                    )),
                SizedBox(height: 35), // Adds vertical spacing between widgets
                Icon(
                  Icons.favorite, // Heart icon from Material icons
                  color: Colors.black, // Icon color
                  size: 64, // Icon size
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
