import "package:firstflutterproject/Widget/drawer.dart";
import "package:firstflutterproject/Widget/item_widget.dart";
import "package:firstflutterproject/model/catalog.dart";
import "dart:convert";
import "package:flutter/material.dart";
import "package:flutter/services.dart";

class Homepage extends StatefulWidget {
  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final catalog = CatalogModel();

  @override
  void initState() {
    super.initState();
    loadData();
  }

loadData() async {
  try {
    final productJson = await rootBundle.loadString("assests/files/product.json");
    final decodedData = jsonDecode(productJson);
    final List<Item> items = List<Map<String, dynamic>>.from(decodedData["products"])
        .map<Item>((item) => Item.fromMap(item))
        .toList();

    setState(() {
      catalog.items = items;
    });
  } catch (e) {
    print("Error loading data: $e");
  }
}


  @override
  Widget build(BuildContext context) {
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
          itemCount: catalog.items.length,
          itemBuilder: (context, index) {
            // final item = catalog.items[index];
            return ItemWidget(item: catalog.items[index]);
          },
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}

