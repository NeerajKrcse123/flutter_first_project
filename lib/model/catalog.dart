class CatalogModel {
  final items = [
    Item(
      id: "1",
      name: "iPhone 12 Pro",
      desc: "Apple iPhone 12th generation",
      color: "33505a",
      image: "iphone-12-pro-blue-hero.jpg",
      price: "999.99",
    ),
  ];
}

class Item {
  final String? id;
  final String? name;
  final String? desc;
  final String? price;
  final String? color;
  final String? image;

  Item(
      {this.id,
      this.name,
      this.desc,
      this.price,
      this.color,
      this.image}); // this is a constructor
}
