import 'package:flutter/material.dart';
import 'package:thewaves/screens/Models/model.dart';
import 'package:thewaves/Widget/Card Widget.dart';


//import 'Card Widget.dart';

class MyApp2 extends StatelessWidget {
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
              url: 'https://i.pinimg.com/236x/2a/25/c3/2a25c3258f135c29f949c66f479bb22f.jpg',
              id: 1,
              name: 'Product A',
              description: 'Description A',
              price: 10.0,
            ),
            onAddToCart: _addToCart,
          ),
          ItemCard(
            product: Product(
              url:'https://i.pinimg.com/236x/fb/a0/bc/fba0bcbf553d18b190f8c1d4a68e2ada.jpg',
              id: 2,
              name: 'Product B',
              description: 'Description B',
              price: 15.0,
            ),
            onAddToCart: _addToCart,
          ),
          ItemCard(
            product: Product(
              url: 'https://i.pinimg.com/236x/cb/eb/7b/cbeb7b540183e5a9dbea234cdad179b6.jpg',
              id: 3,
              name: 'Product C',
              description: 'Description C',
              price: 20.0,
            ),
            onAddToCart: _addToCart,
          ),

          ItemCard(
            product: Product(
              url: 'https://i.pinimg.com/236x/01/eb/fb/01ebfb02eb9dfac75aed9fdcb1315d84.jpg',
              id: 3,
              name: 'Product C',
              description: 'Description C',
              price: 20.0,
            ),
            onAddToCart: _addToCart,
          ),



          ItemCard(
            product: Product(
              url: 'https://i.pinimg.com/236x/61/32/71/613271aebb74209f25c08309f06b3daf.jpg',
              id: 3,
              name: 'Product C',
              description: 'Description C',
              price: 20.0,
            ),
            onAddToCart: _addToCart,
          ),




          ItemCard(
            product: Product(
              url: 'https://i.pinimg.com/236x/80/ae/ca/80aecaed35d0d9df1b2d0446c98616b6.jpg',
              id: 3,
              name: 'Product C',
              description: 'Description C',
              price: 20.0,
            ),
            onAddToCart: _addToCart,
          ),




          ItemCard(
            product: Product(
              url: 'https://i.pinimg.com/236x/a1/20/ba/a120baf63080269383bb9d7bade720a5.jpg',
              id: 3,
              name: 'Product C',
              description: 'Description C',
              price: 20.0,
            ),
            onAddToCart: _addToCart,
          ),




          ItemCard(
            product: Product(
              url: 'https://i.pinimg.com/236x/57/ae/68/57ae68b4b63730bd6c3607e8857903ef.jpg',
              id: 3,
              name: 'Product C',
              description: 'Description C',
              price: 20.0,
            ),
            onAddToCart: _addToCart,
          ),


          ItemCard(
            product: Product(
              url: 'https://i.pinimg.com/236x/89/dd/80/89dd8094f4c04cbd868028593e901d76.jpg',
              id: 3,
              name: 'Product C',
              description: 'Description C',
              price: 20.0,
            ),
            onAddToCart: _addToCart,
          ),



          ItemCard(
            product: Product(
              url: 'https://i.pinimg.com/236x/27/f1/5e/27f15ee6ac812974c2aa3be413cc3272.jpg',
              id: 3,
              name: 'Product C',
              description: 'Description C',
              price: 20.0,
            ),
            onAddToCart: _addToCart,
          ),


          ItemCard(
            product: Product(
              url: 'https://i.pinimg.com/564x/26/1a/28/261a28fdf61e20b23219c59d428d60bd.jpg',
              id: 3,
              name: 'Product C',
              description: 'Description C',
              price: 20.0,
            ),
            onAddToCart: _addToCart,
          ),




          ItemCard(
            product: Product(
              url: 'https://i.pinimg.com/564x/26/1a/28/261a28fdf61e20b23219c59d428d60bd.jpg',
              id: 3,
              name: 'Product C',
              description: 'Description C',
              price: 20.0,
            ),
            onAddToCart: _addToCart,
          ),




          ItemCard(
            product: Product(
              url: 'https://i.pinimg.com/236x/f8/1e/ea/f81eea72322cb43583171bea2ec9e2b3.jpg',
              id: 3,
              name: 'Product C',
              description: 'Description C',
              price: 20.0,
            ),
            onAddToCart: _addToCart,
          ),




          ItemCard(
            product: Product(
              url: 'https://i.pinimg.com/236x/80/67/8d/80678dfe3fd46226635322b7ce0dba98.jpg',
              id: 3,
              name: 'Product C',
              description: 'Description C',
              price: 20.0,
            ),
            onAddToCart: _addToCart,
          ),



          ItemCard(
            product: Product(
              url: 'https://i.pinimg.com/236x/92/d1/ea/92d1ead5018fffcec8f43ca66dc7beda.jpg',
              id: 3,
              name: 'Product C',
              description: 'Description C',
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
