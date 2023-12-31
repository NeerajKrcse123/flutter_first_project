import 'package:firstflutterproject/Pages/home_page.dart';
import 'package:firstflutterproject/Pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        themeMode: ThemeMode.light,
        theme: ThemeData(
          primarySwatch: Colors.deepPurple,
          fontFamily: GoogleFonts.lato().fontFamily,
        ),
        darkTheme:
            ThemeData(brightness: Brightness.dark, primarySwatch: Colors.red),
        routes: {
          "/": (context) => Loginpage(),
          "/loginpage": (context) => Loginpage(),
        });
  }
}
