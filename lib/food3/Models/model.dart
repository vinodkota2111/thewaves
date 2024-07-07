// product_model.dart
class Product {
  final int id;
  final String name;
  final String description;
  final double price;
  final String url;

  Product({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.url,
  });
}

// cart_item_model.dart
class CartItem {
  final Product product;
  int quantity;

  CartItem({
    required this.product,
    required this.quantity,
  });
}
