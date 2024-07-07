import 'package:flutter/material.dart';
//import 'package:thewaves/Models/model.dart';

import '../../food3/Models/model.dart';
//import '../screens/Models/model.dart';



class CartPage extends StatelessWidget {
  final List<CartItem> cartItems;
  final Function(int) onRemoveItem;
  final Function(int, int) onUpdateQuantity;
  final Function() onPlaceOrder;

  CartPage({
    required this.cartItems,
    required this.onRemoveItem,
    required this.onUpdateQuantity,
    required this.onPlaceOrder,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart'),
      ),
      body: cartItems.isEmpty
          ? Center(
        child: Text('Your cart is empty.'),
      )
          : ListView.builder(
        itemCount: cartItems.length,
        itemBuilder: (context, index) {
          final cartItem = cartItems[index];
          return Card(
            margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: Padding(
              padding: EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    cartItem.product.name,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Price: \$${cartItem.product.price.toStringAsFixed(2)}',
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {
                              onUpdateQuantity(cartItem.product.id, cartItem.quantity - 1);
                            },
                            icon: Icon(Icons.remove),
                          ),
                          Text(cartItem.quantity.toString()),
                          IconButton(
                            onPressed: () {
                              onUpdateQuantity(cartItem.product.id, cartItem.quantity + 1);
                            },
                            icon: Icon(Icons.add),
                          ),
                        ],
                      ),
                      ElevatedButton(
                        onPressed: () {
                          onRemoveItem(cartItem.product.id);
                        },
                        child: Text('Remove'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: onPlaceOrder,
        label: Text('Place Order'),
        icon: Icon(Icons.shopping_cart),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
