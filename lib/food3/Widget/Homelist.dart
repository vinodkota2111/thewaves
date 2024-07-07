import 'package:flutter/material.dart';
import 'package:thewaves/food3/Models/model.dart';
import 'package:thewaves/food3/Widget/Card Widget.dart';


//import 'Card Widget.dart';

class MyApp4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shopping Cart Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<CartItem> _cartItems = [];

  void _addToCart(Product product) {
    setState(() {
      // Check if the product is already in the cart
      bool alreadyInCart = false;
      for (CartItem item in _cartItems) {
        if (item.product.id == product.id) {
          item.quantity++;
          alreadyInCart = true;
          break;
        }
      }
      if (!alreadyInCart) {
        _cartItems.add(CartItem(product: product, quantity: 1));
      }
    });
  }

  void _removeItem(int productId) {
    setState(() {
      _cartItems.removeWhere((item) => item.product.id == productId);
    });
  }

  void _updateQuantity(int productId, int newQuantity) {
    setState(() {
      if (newQuantity > 0) {
        for (CartItem item in _cartItems) {
          if (item.product.id == productId) {
            item.quantity = newQuantity;
            break;
          }
        }
      }
    });
  }

  void _placeOrder() {
    // Implement your order placing logic here
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Order Placed'),
          content: Text('Your order has been placed successfully!'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
    setState(() {
      _cartItems = [];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(backgroundColor: Colors.cyanAccent,
        title: Center(child: Text('Shopping Cart')),
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [



          ItemCard(

            product: Product(
              url: 'https://i.pinimg.com/236x/ad/db/80/addb804eea76c5380aef9d78b3d17957.jpg',
              id: 1,
              name: 'choco byte',
              description: 'you love this',
              price: 10.0,
            ),
            onAddToCart: _addToCart,
          ),
          ItemCard(
            product: Product(
              url:'https://i.pinimg.com/236x/0e/20/d8/0e20d88192a9c98012bf279e56e733a8.jpg',
              id: 2,
              name: 'nut cookie',
              description: 'you love this',
              price: 15.0,
            ),
            onAddToCart: _addToCart,
          ),
          ItemCard(
            product: Product(
              url: 'https://i.pinimg.com/236x/92/3c/f0/923cf0a74ada77f17f5c4d5b4474ca8e.jpg',
              id: 3,
              name: 'oreo cookie',
              description: 'you love this',
              price: 20.0,
            ),
            onAddToCart: _addToCart,
          ),

          ItemCard(
            product: Product(
              url: 'https://i.pinimg.com/564x/ab/db/cf/abdbcfaccb53c89995fc1dc65b951173.jpg',
              id: 3,
              name: 'cookies',
              description: 'you love this',
              price: 20.0,
            ),
            onAddToCart: _addToCart,
          ),



          ItemCard(
            product: Product(
              url: 'https://i.pinimg.com/236x/e4/a7/4c/e4a74ce15b73b4bb213e4224ad040a1d.jpg',
              id: 3,
              name: 'berry cookie',
              description: 'you love this',
              price: 20.0,
            ),
            onAddToCart: _addToCart,
          ),




          ItemCard(
            product: Product(
              url: 'https://i.pinimg.com/236x/72/e7/72/72e77204d8e4078a0e2b8858f425a264.jpg',
              id: 3,
              name: 'cookie',
              description: 'you love this',
              price: 20.0,
            ),
            onAddToCart: _addToCart,
          ),




          ItemCard(
            product: Product(
              url: 'https://i.pinimg.com/564x/3c/67/61/3c6761ea665d3f61bbcbbbcc4713885e.jpg',
              id: 3,
              name: 'nut cookie',
              description: 'you love this',
              price: 20.0,
            ),
            onAddToCart: _addToCart,
          ),




          ItemCard(
            product: Product(
              url: 'https://i.pinimg.com/236x/11/b3/d8/11b3d801357be7e073dd447fc6aa46c8.jpg',
              id: 3,
              name: 'cookies',
              description: 'you love this',
              price: 20.0,
            ),
            onAddToCart: _addToCart,
          ),


          ItemCard(
            product: Product(
              url: 'https://i.pinimg.com/236x/3f/2c/e9/3f2ce961f24022f2897ea4301fec8b03.jpg',
              id: 3,
              name: 'biscut cookie',
              description: 'you love this',
              price: 20.0,
            ),
            onAddToCart: _addToCart,
          ),



          ItemCard(
            product: Product(
              url: 'https://i.pinimg.com/564x/09/c5/95/09c595afd9ac773c7bdeaea11a8ff64f.jpg',
              id: 3,
              name: 'milk cookie',
              description: 'you love this',
              price: 20.0,
            ),
            onAddToCart: _addToCart,
          ),


          ItemCard(
            product: Product(
              url: 'https://i.pinimg.com/474x/f2/80/70/f28070b439b1d02b9b979866adca8284.jpg',
              id: 3,
              name: 'cookie',
              description: 'you love this',
              price: 20.0,
            ),
            onAddToCart: _addToCart,
          ),




          ItemCard(
            product: Product(
              url: 'https://i.pinimg.com/236x/dd/0c/13/dd0c137c7c95d93960bdc4fe68f67115.jpg',
              id: 3,
              name: 'cream cookie',
              description: 'you love this',
              price: 20.0,
            ),
            onAddToCart: _addToCart,
          ),




          ItemCard(
            product: Product(
              url: 'https://i.pinimg.com/236x/c8/65/e0/c865e00e921599ae1c136f980a9af7b5.jpg',
              id: 3,
              name: 'color cookie',
              description: 'you love this',
              price: 20.0,
            ),
            onAddToCart: _addToCart,
          ),




          ItemCard(
            product: Product(
              url: 'https://i.pinimg.com/564x/f8/dd/0e/f8dd0ef7911582e6cad786b355142242.jpg',
              id: 3,
              name: 'dry cookie',
              description: 'you love this',
              price: 20.0,
            ),
            onAddToCart: _addToCart,
          ),



          ItemCard(
            product: Product(
              url: 'https://i.pinimg.com/236x/81/c7/21/81c721ae4e81cb6ff09629c6ff3df922.jpg',
              id: 3,
              name: 'bunch cookies',
              description: 'you love this all',
              price: 20.0,
            ),
            onAddToCart: _addToCart,
          ),



        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => CartPage(
                cartItems: _cartItems,
                onRemoveItem: _removeItem,
                onUpdateQuantity: _updateQuantity,
                onPlaceOrder: _placeOrder,
              ),
            ),
          );
        },
        icon: Icon(Icons.shopping_cart),
        label: Text('Cart'),
      ),
    );
  }
}
