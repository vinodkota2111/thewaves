
import 'package:flutter/material.dart';
//import 'package:thewaves/Models/model.dart';

import '../screens/Models/model.dart';


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
        title: Text('Shopping Cart'),
      ),
      body: ListView.builder(
        itemCount: cartItems.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(cartItems[index].product.name),
            subtitle: Text('Price: \$${cartItems[index].product.price.toString()}'),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  icon: Icon(Icons.remove),
                  onPressed: () {
                    onRemoveItem(cartItems[index].product.id);
                  },
                ),
                Text(cartItems[index].quantity.toString()),
                IconButton(
                  icon: Icon(Icons.add),
                  onPressed: () {
                    onUpdateQuantity(cartItems[index].product.id, cartItems[index].quantity + 1);
                  },
                ),
              ],
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          onPlaceOrder();
        },
        icon: Icon(Icons.check),
        label: Text('Place Order'),
      ),
    );
  }
}


class ItemCard extends StatelessWidget {
  final Product product;
  final Function(Product) onAddToCart;

  ItemCard({
    required this.product,
    required this.onAddToCart,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(5),
      child: Padding(
        padding: EdgeInsets.only(right: 15,),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 150,
              width: 140,
              child: ClipRRect(

                child: ClipRRect(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(20),bottomLeft: Radius.circular(20)),
                  child: Image.network(product.url,height: 100,width: 100,fit: BoxFit.cover,),
                ),
              ),
            ),
            SizedBox(width: 20,),
            Container(
              height: 150,
              width: 140,
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product.name,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Text(
                    product.description,
                    style: TextStyle(fontSize: 14),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Price: \$${product.price.toStringAsFixed(2)}',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 12),
                  ElevatedButton(
                    onPressed: () {
                      onAddToCart(product);
                    },
                    child: Text('Add to Cart'),
                  ),

                ],
              ) ,

            )
          ],
        ),
      ),
    );
  }
}



