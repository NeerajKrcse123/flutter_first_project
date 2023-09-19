import "package:firstflutterproject/Widget/drawer.dart";
import "package:firstflutterproject/Widget/item_widget.dart";
import "package:firstflutterproject/model/catalog.dart";
import "package:flutter/material.dart";

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final catalog = CatalogModel(); // Create an instance of CatalogModel
    final name = "codepur";
    final int days = 30;
    final dummylist = List.generate(20, (index) => catalog.items[0]);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Catalog App",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: dummylist.length,
          itemBuilder: (context, index) {
            // final item = catalog.items[index];
            return ItemWidget(item: dummylist[index]);
          },
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
