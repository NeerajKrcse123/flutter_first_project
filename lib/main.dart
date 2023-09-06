import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Directionality(
        textDirection: TextDirection.ltr, // Left-to-right text direction
        child: Scaffold(
          appBar: AppBar(
            title: Text('Flutter App'),
          ),
          body: Center(
            child: Text(
              "Welcome to Flutter",
              textDirection: TextDirection.ltr, // Left-to-right text direction
            ),
          ),
        ),
      ),
    );
  }
}
