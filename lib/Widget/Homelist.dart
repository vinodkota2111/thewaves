import 'package:flutter/material.dart';
import 'package:thewaves/screens/Models/model.dart';
import 'package:thewaves/Widget/Card Widget.dart';


//import 'Card Widget.dart';

class MyApp1 extends StatelessWidget {
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
        title: Center(child: Text('Hey there cutie pie')),
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [



          ItemCard(

            product: Product(
              url: 'https://i.pinimg.com/236x/66/75/fe/6675fe80cec7c9ae75aedeb53a20134d.jpg',
              id: 1,
              name: 'choco donut',
              description: 'springs way',
              price: 10.0,
            ),
            onAddToCart: _addToCart,
          ),
          ItemCard(
            product: Product(
              url:'https://i.pinimg.com/236x/44/35/0a/44350a788e89f4d59bee26fa91da4898.jpg',
              id: 2,
              name: 'sweet donut',
              description: 'sugaryyy',
              price: 15.0,
            ),
            onAddToCart: _addToCart,
          ),
          ItemCard(
            product: Product(
              url: 'https://i.pinimg.com/236x/f0/82/b5/f082b50cd00c0d1f5963b1de714f8a26.jpg',
              id: 3,
              name: 'gem donut',
              description: 'sweety',
              price: 20.0,
            ),
            onAddToCart: _addToCart,
          ),

          ItemCard(
            product: Product(
              url: 'https://i.pinimg.com/236x/8e/38/65/8e38653d1f43017077c1d4f277622fa4.jpg',
              id: 3,
              name: 'spring donut',
              description: 'tasteyyy',
              price: 20.0,
            ),
            onAddToCart: _addToCart,
          ),



          ItemCard(
            product: Product(
              url: 'https://i.pinimg.com/236x/b6/85/2a/b6852ab7ff5f182ab6f7daeec0248620.jpg',
              id: 3,
              name: 'combo donut',
              description: 'fuzzy tasteyy',
              price: 20.0,
            ),
            onAddToCart: _addToCart,
          ),




          ItemCard(
            product: Product(
              url: 'https://i.pinimg.com/236x/cd/e8/69/cde869659de2f7ad5c3c01ba07834c20.jpg',
              id: 3,
              name: 'donut sandwich',
              description: 'crunchyy',
              price: 20.0,
            ),
            onAddToCart: _addToCart,
          ),




          ItemCard(
            product: Product(
              url: 'https://i.pinimg.com/236x/b3/f9/8a/b3f98ae0b6710dcc419a8b3e476b4f3d.jpg',
              id: 3,
              name: 'croissant',
              description: 'crunchyy',
              price: 20.0,
            ),
            onAddToCart: _addToCart,
          ),




          ItemCard(
            product: Product(
              url: 'https://i.pinimg.com/236x/75/99/2e/75992e171470979d7b521b654f0b1794.jpg',
              id: 3,
              name: 'choco croissant',
              description: 'tasteyy with munch',
              price: 20.0,
            ),
            onAddToCart: _addToCart,
          ),


          ItemCard(
            product: Product(
              url: 'https://i.pinimg.com/236x/2c/8e/38/2c8e38f6201d2bf50ad1dc3d796c149f.jpg',
              id: 3,
              name: 'nut croisant',
              description: 'dry food',
              price: 20.0,
            ),
            onAddToCart: _addToCart,
          ),



          ItemCard(
            product: Product(
              url: 'https://i.pinimg.com/236x/a2/2a/05/a22a05553e2c5f305ce5ce10aa0256a4.jpg',
              id: 3,
              name: 'veg croissant',
              description: 'healthy',
              price: 20.0,
            ),
            onAddToCart: _addToCart,
          ),


          ItemCard(
            product: Product(
              url: 'https://i.pinimg.com/236x/46/15/68/4615688cd512fabe8a0e075277a62fb5.jpg',
              id: 3,
              name: 'tasety roll',
              description: 'roll croissant',
              price: 20.0,
            ),
            onAddToCart: _addToCart,
          ),




          ItemCard(
            product: Product(
              url: 'https://i.pinimg.com/236x/43/7c/44/437c447768d443d33d9ee3743e87dd08.jpg',
              id: 3,
              name: 'burger',
              description: 'fuzzeyy',
              price: 20.0,
            ),
            onAddToCart: _addToCart,
          ),




          ItemCard(
            product: Product(
              url: 'https://i.pinimg.com/236x/bf/35/66/bf3566cd10c73edcfb61e041dbb434a1.jpg',
              id: 3,
              name: 'veg burger',
              description: 'healthy',
              price: 20.0,
            ),
            onAddToCart: _addToCart,
          ),




          ItemCard(
            product: Product(
              url: 'https://i.pinimg.com/236x/b8/b2/2b/b8b22bb57bd8550ad59a1b63b9f81d44.jpg',
              id: 3,
              name: 'meat burger',
              description: 'protiene',
              price: 20.0,
            ),
            onAddToCart: _addToCart,
          ),



          ItemCard(
            product: Product(
              url: 'https://i.pinimg.com/236x/01/a8/b2/01a8b20022d3ac8d1c0ad960e7b67466.jpg',
              id: 3,
              name: 'fuzzy burger',
              description: 'cheesey',
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
