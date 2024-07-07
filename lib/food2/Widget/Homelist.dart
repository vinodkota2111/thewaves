import 'package:flutter/material.dart';
import 'package:thewaves/screens/Models/model.dart';
import 'package:thewaves/Widget/Card Widget.dart';


//import 'Card Widget.dart';


class MyApp3 extends StatelessWidget {
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
        title: Center(child: Text('foodie hub')),
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [



          ItemCard(

            product: Product(
              url: 'https://i.pinimg.com/236x/31/bd/88/31bd88cc2c87124bc29a9009609be881.jpg',
              id: 1,
              name: 'milky paasta',
              description: 'try it once',
              price: 10.0,
            ),
            onAddToCart: _addToCart,
          ),
          ItemCard(
            product: Product(
              url:'https://i.pinimg.com/236x/db/db/7d/dbdb7d3ddf5ff6c3a9f8c80ff54a8bf9.jpg',
              id: 2,
              name: 'cheese paasta',
              description: 'try it once',
              price: 15.0,
            ),
            onAddToCart: _addToCart,
          ),
          ItemCard(
            product: Product(
              url: 'https://i.pinimg.com/236x/81/e0/d5/81e0d5ba7ed23014982c6dc0a65d6625.jpg',
              id: 3,
              name: 'spring passta',
              description: 'juicyy',
              price: 20.0,
            ),
            onAddToCart: _addToCart,
          ),

          ItemCard(
            product: Product(
              url: 'https://i.pinimg.com/236x/64/4f/2c/644f2c664d21e40fd5566c6ed108aa20.jpg',
              id: 3,
              name: 'veg paasta',
              description: 'hygenic',
              price: 20.0,
            ),
            onAddToCart: _addToCart,
          ),



          ItemCard(
            product: Product(
              url: 'https://i.pinimg.com/236x/35/b9/70/35b97010f95426fc98ee83dd4448cc33.jpg',
              id: 3,
              name: 'spicy paasta',
              description: 'try it once',
              price: 20.0,
            ),
            onAddToCart: _addToCart,
          ),




          ItemCard(
            product: Product(
              url: 'https://i.pinimg.com/236x/de/89/6e/de896eb3233bf0a05b312542b90a1633.jpg',
              id: 3,
              name: 'roll paasta',
              description: 'once try it',
              price: 20.0,
            ),
            onAddToCart: _addToCart,
          ),




          ItemCard(
            product: Product(
              url: 'https://i.pinimg.com/236x/b1/8f/d2/b18fd2257251ef28397d2513f60664d1.jpg',
              id: 3,
              name: 'fruit salad',
              description: 'fezzy quzzy',
              price: 20.0,
            ),
            onAddToCart: _addToCart,
          ),




          ItemCard(
            product: Product(
              url: 'https://i.pinimg.com/236x/1a/57/6e/1a576e650b5cfd26a73f81fa1c79352b.jpg',
              id: 3,
              name: 'veg paasta',
              description: 'hygenic',
              price: 20.0,
            ),
            onAddToCart: _addToCart,
          ),


          ItemCard(
            product: Product(
              url: 'https://i.pinimg.com/236x/65/fe/6b/65fe6b9ec93dfe8c0c9ff48488d9a1bb.jpg',
              id: 3,
              name: 'salty saalad',
              description: 'hygenic',
              price: 20.0,
            ),
            onAddToCart: _addToCart,
          ),



          ItemCard(
            product: Product(
              url: 'https://i.pinimg.com/236x/89/7e/19/897e197d0644d0ae3d830c6abf428346.jpg',
              id: 3,
              name: 'panner salaad',
              description: 'tastey ',
              price: 20.0,
            ),
            onAddToCart: _addToCart,
          ),


          ItemCard(
            product: Product(
              url: 'https://i.pinimg.com/236x/ea/b1/92/eab192516728fc9eb0e0785fcfca0788.jpg',
              id: 3,
              name: 'salaads',
              description: 'love it',
              price: 20.0,
            ),
            onAddToCart: _addToCart,
          ),




          ItemCard(
            product: Product(
              url: 'https://i.pinimg.com/236x/4b/e4/41/4be441aaa7b749967cc38d2db6cdcad4.jpg',
              id: 3,
              name: 'saalad',
              description: 'healthy',
              price: 20.0,
            ),
            onAddToCart: _addToCart,
          ),




          ItemCard(
            product: Product(
              url: 'https://i.pinimg.com/236x/8a/0b/47/8a0b47a80a9514b7c2faf3cf6f663f86.jpg',
              id: 3,
              name: 'juicy saalad',
              description: 'tastey',
              price: 20.0,
            ),
            onAddToCart: _addToCart,
          ),




          ItemCard(
            product: Product(
              url: 'https://i.pinimg.com/236x/6e/00/00/6e000051231aa7e6325d20cace3ed525.jpg',
              id: 3,
              name: 'saalad',
              description: 'love this one',
              price: 20.0,
            ),
            onAddToCart: _addToCart,
          ),



          ItemCard(
            product: Product(
              url: 'https://i.pinimg.com/236x/2f/e7/ac/2fe7ac08b47f2a440c6a9db85d76d647.jpg',
              id: 3,
              name: 'kiwi salaad',
              description: 'hygenic',
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
