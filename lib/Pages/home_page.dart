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
     print("Product JSON: $productJson");
   
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
        child:(catalog.items!= null && catalog.items.isNotEmpty)?
         GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing: 16,crossAxisSpacing: 16),
          itemCount: catalog.items.length,
          itemBuilder: (context, index) {
            final item = catalog.items[index];
            print(item);
                   final imageName = item.image; // Assuming this field contains image file names

                  // if (imageName != null && imageName.isNotEmpty) {
                    // Check if imageName is not null and not empty
  return Card(
  clipBehavior: Clip.antiAlias,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(10),
  ),
  child: GridTile(
    header: Container(
      child: Text(
        item.name.toString(),
        style: TextStyle(color: Colors.white),
      ),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(color: Colors.deepPurple),
    ),
    footer: Container(
      child: Text(
        item.price.toString(),
        style: TextStyle(color: Colors.white),
      ),
      padding: const EdgeInsets.all(12), // Use only one padding argument
      decoration: BoxDecoration(color: Colors.black),
    ),
    child: Image(
      image: AssetImage("assests/images/$imageName"), // Adjust the path as needed
    ),
  ),
);
          },
        )
        :Center(
          child: CircularProgressIndicator(),
        )
      ),
      drawer: MyDrawer(),
    );
  }
}

