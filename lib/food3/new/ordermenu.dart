import 'package:flutter/material.dart';
//import 'package:easyfood/new/datamodel.dart';
import 'package:thewaves/food3/new/datamodel.dart';
import 'package:thewaves/food3/new/list.dart';


class Mymenu extends StatelessWidget {

  // Sample menu items
  final List<MenuItem > menuItems = [
    MenuItem(name: 'Burger',
        description: 'Delicious burger',
        price: 10.0,
        url: 'https://i.pinimg.com/236x/50/3b/99/503b9952fffc44143981d6b6a1b953cd.jpg'),
    MenuItem(name: 'Pizza',
        description: 'Tasty pizza',
        price: 12.0,
        url: 'https://i.pinimg.com/236x/50/3b/99/503b9952fffc44143981d6b6a1b953cd.jpg'),
    MenuItem(name: 'Salad',
        description: 'Healthy salad',
        price: 8.0,
        url: 'https://i.pinimg.com/236x/50/3b/99/503b9952fffc44143981d6b6a1b953cd.jpg'),

    MenuItem(name: 'Burger',
        description: 'Delicious burger',
        price: 10.0,
        url: 'https://i.pinimg.com/236x/50/3b/99/503b9952fffc44143981d6b6a1b953cd.jpg'),
    MenuItem(name: 'Pizza',
        description: 'Tasty pizza',
        price: 12.0,
        url: 'https://i.pinimg.com/236x/50/3b/99/503b9952fffc44143981d6b6a1b953cd.jpgg'),
    MenuItem(name: 'Salad',
        description: 'Healthy salad',
        price: 8.0,
        url: 'https://i.pinimg.com/236x/50/3b/99/503b9952fffc44143981d6b6a1b953cd.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: OrderMenuPage(menuItems: menuItems),
    );
  }
}

class OrderMenuPage extends StatefulWidget {
  final List<MenuItem> menuItems;

  const OrderMenuPage({Key? key, required this.menuItems}) : super(key: key);

  @override
  _OrderMenuPageState createState() => _OrderMenuPageState();
}

class _OrderMenuPageState extends State<OrderMenuPage> {
  List<MenuItem> cartItems = [];

  void addToCart(MenuItem item) {
    setState(() {
      item.addedToCart = true;
      cartItems.add(item);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Order Menu'),
      ),
      body: ListView.builder(
        itemCount: widget.menuItems.length,
        itemBuilder: (context, index) {
          MenuItem item = widget.menuItems[index];
          return Container(
            height: 200,
            width: 300,
            child: Card(
              child: Row(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          height: 200,
                          width: 150,
                          child: Image.network(item.url,fit: BoxFit.cover,height: 200,width: 150,),
                        ),
                        Container(
                          height: 200,
                          width: 150,
                          child: Column(
                            children: [


                                   Text(item.name),
                                   Text(item.description),
                                  Text('\$${item.price.toStringAsFixed(2)}'),
                                   ElevatedButton(onPressed: (){}, child: Text('Add to cart')),
                            ],
                          ),
                        )
                      ],
                    )
                  ]
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => CartPage(cartItems: cartItems, onRemoveItem: (int productId) {  },),
            ),
          );
        },
        label: Text('View Cart'),
        icon: Icon(Icons.shopping_cart),
      ),
    );
  }
}
