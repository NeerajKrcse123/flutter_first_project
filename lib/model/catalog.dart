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

final products = [
  Item(
    id: "neeraj001",
    name: "iPhone 12 Pro",
    desc: "Apple iPhone 12th generation",
    color: "33505a",
    image: "iphone12.jpg",
    price: "999.99",
  ),
];
