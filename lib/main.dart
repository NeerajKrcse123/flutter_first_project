import 'package:firstflutterproject/Pages/home_page.dart';
import 'package:firstflutterproject/Pages/login_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        // home: Homepage(),
        themeMode: ThemeMode.light,
        theme: ThemeData(primarySwatch: Colors.deepPurple),
        darkTheme:
            ThemeData(brightness: Brightness.dark, primarySwatch: Colors.red),
        routes: {
          "/": (context) => Homepage(),
          "/loginpage": (context) => Loginpage(),
        });
  }
}
