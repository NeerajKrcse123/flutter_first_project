import 'package:firstflutterproject/Pages/home_page.dart';
import 'package:firstflutterproject/Pages/login_page.dart';
import 'package:firstflutterproject/Widget/themes.dart';
import 'package:firstflutterproject/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.light,
        theme: MyTheme.lightTheme(context),
        darkTheme: MyTheme.darkTheme(context),
        initialRoute: MyRoutes.homeRoute,
        routes: {
          "/": (context) => Loginpage(),
          // "/loginpage": (context) => Loginpage(),
          MyRoutes.homeRoute: (context) => Homepage(),
          MyRoutes.loginRoute: (context) => Loginpage()
        });
  }
}
