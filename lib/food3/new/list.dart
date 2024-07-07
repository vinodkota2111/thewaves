import 'package:flutter/material.dart';

import 'package:thewaves/food3/new/datamodel.dart';
class CartPage extends StatelessWidget {
  final List<MenuItem > cartItems;

  const CartPage({Key? key, required this.cartItems, required void Function(int productId) onRemoveItem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double totalPrice = cartItems.fold(0, (sum, item) => sum + item.price);

    return Scaffold(
      appBar: AppBar(
        title: Text('Cart'),
      ),
      body: ListView.builder(
        itemCount: cartItems.length,
        itemBuilder: (context, index) {
          MenuItem item = cartItems[index];
          return ListTile(
            title: Text(item.name),
            subtitle: Text(item.description),
            trailing: Text('\$${item.price.toStringAsFixed(2)}'),
          );
        },
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              'Total: \$${totalPrice.toStringAsFixed(2)}',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            ElevatedButton(
              onPressed: () {
                // Implement checkout logic here
                // For example, navigate to a checkout page
                Navigator.pop(context); // Go back to order menu page
              },
              child: Text('Checkout'),
            ),
          ],
        ),
      ),
    );
  }
}
