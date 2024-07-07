class MenuItem {
  final String name;
  final String url;
  final String description;
  final double price;
  bool addedToCart;

  MenuItem({
    required this.name,
    required this.description,
    required this.price,
    required this.url,
    this.addedToCart = false,
  });
}




class Item {
  final String name;
  final String imageUrl;
  final String description;
  final double price;

  Item({
    required this.name,
    required this.imageUrl,
    required this.description,
    required this.price,
  });
}

// Sample data

