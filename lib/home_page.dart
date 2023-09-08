import "package:flutter/material.dart";

class Homepage extends StatelessWidget {
// Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    final name = "codepur";
    final int days = 30;
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          child: Text("welcome to days $days  of flutter by $name"),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
