import 'package:etax/login_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white, // White background
        primaryColor: Colors.blue, // Blue theme color
        textTheme:const TextTheme(
          headline6: TextStyle(fontSize: 24.0, color: Colors.blue),
          bodyText1: TextStyle(fontSize: 16.0, color: Colors.grey),
        ),
      ),
      home: LoginPage(),
    );
  }
}


