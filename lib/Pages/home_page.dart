import "package:firstflutterproject/Widget/drawer.dart";
import "package:flutter/material.dart";

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final name = "codepur";
    final int days = 30;
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App",style: TextStyle(color: Colors.black),),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          child: Text("welcome to $days days  of flutter by $name"),
        ),
      ),
      drawer:MyDrawer(),
    );
  }
}
