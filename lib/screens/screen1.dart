import 'package:flutter/material.dart';
import 'package:thewaves/screens/scree2.dart';
import 'package:thewaves/screens/screen4.dart';

class HomeScreen extends StatelessWidget {
  final List<Product> products1 = [
    Product(
      name: 'Burgur',
      price: 1.99,
      imageUrl: 'https://i.pinimg.com/236x/99/86/a4/9986a43722df0c68d311d685910f79ca.jpg',
      rating: 4.5,
    ),
    Product(
      name: 'Save puri',
      price: 0.99,
      imageUrl: 'https://i.pinimg.com/564x/31/8a/61/318a612cca845c61530c488384304ca3.jpg',
      rating: 4.0,
    ),
    Product(
      name: 'Strawberry Buttercream',
      price: 2.49,
      imageUrl: 'https://i.pinimg.com/564x/7e/76/9a/7e769acc2329dc8c28fc3bfa1da8ffa0.jpg',
      rating: 3.8,
    ),
    Product(
      name: 'Chicken wings',
      price: 3.49,
      imageUrl: 'https://i.pinimg.com/236x/5f/d3/d9/5fd3d921fc91bf853a6bdd4af03d0e40.jpg',
      rating: 4.2,
    ),
    Product(
      name: 'Idly',
      price: 2.99,
      imageUrl: 'https://i.pinimg.com/236x/75/98/89/759889dd0a549fece7a64e2f2607315a.jpg',
      rating: 4.1,
    ),
    Product(
      name: 'Save puri',
      price: 0.99,
      imageUrl: 'https://i.pinimg.com/564x/31/8a/61/318a612cca845c61530c488384304ca3.jpg',
      rating: 4.0,
    ),
    Product(
      name: 'Strawberry Buttercream',
      price: 2.49,
      imageUrl: 'https://i.pinimg.com/564x/7e/76/9a/7e769acc2329dc8c28fc3bfa1da8ffa0.jpg',
      rating: 3.8,
    ),
    Product(
      name: 'Chicken wings',
      price: 3.49,
      imageUrl: 'https://i.pinimg.com/236x/5f/d3/d9/5fd3d921fc91bf853a6bdd4af03d0e40.jpg',
      rating: 4.2,
    ),
    Product(
      name: 'Idly',
      price: 2.99,
      imageUrl: 'https://i.pinimg.com/236x/75/98/89/759889dd0a549fece7a64e2f2607315a.jpg',
      rating: 4.1,
    ),

    Product(
      name: 'Burgur',
      price: 1.99,
      imageUrl: 'https://i.pinimg.com/236x/99/86/a4/9986a43722df0c68d311d685910f79ca.jpg',
      rating: 4.5,
    ),
    Product(
      name: 'Save puri',
      price: 0.99,
      imageUrl: 'https://i.pinimg.com/564x/31/8a/61/318a612cca845c61530c488384304ca3.jpg',
      rating: 4.0,
    ),
    Product(
      name: 'Strawberry Buttercream',
      price: 2.49,
      imageUrl: 'https://i.pinimg.com/564x/7e/76/9a/7e769acc2329dc8c28fc3bfa1da8ffa0.jpg',
      rating: 3.8,
    ),
    Product(
      name: 'Chicken wings',
      price: 3.49,
      imageUrl: 'https://i.pinimg.com/236x/5f/d3/d9/5fd3d921fc91bf853a6bdd4af03d0e40.jpg',
      rating: 4.2,
    ),
    Product(
      name: 'Idly',
      price: 2.99,
      imageUrl: 'https://i.pinimg.com/236x/75/98/89/759889dd0a549fece7a64e2f2607315a.jpg',
      rating: 4.1,
    ),
    Product(
      name: 'Save puri',
      price: 0.99,
      imageUrl: 'https://i.pinimg.com/564x/31/8a/61/318a612cca845c61530c488384304ca3.jpg',
      rating: 4.0,
    ),
    Product(
      name: 'Strawberry Buttercream',
      price: 2.49,
      imageUrl: 'https://i.pinimg.com/564x/7e/76/9a/7e769acc2329dc8c28fc3bfa1da8ffa0.jpg',
      rating: 3.8,
    ),
    Product(
      name: 'Chicken wings',
      price: 3.49,
      imageUrl: 'https://i.pinimg.com/236x/5f/d3/d9/5fd3d921fc91bf853a6bdd4af03d0e40.jpg',
      rating: 4.2,
    ),
    Product(
      name: 'Idly',
      price: 2.99,
      imageUrl: 'https://i.pinimg.com/236x/75/98/89/759889dd0a549fece7a64e2f2607315a.jpg',
      rating: 4.1,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.grey,

        title:  Text('EasyFood',style:TextStyle(fontSize: 50,fontWeight: FontWeight.bold,color: Colors.white),),
     actions: [
       IconButton(onPressed: (){}, icon: Icon(Icons.notifications,color: Colors.white,))
     ],
      ),
      body: ListView.builder(
        itemCount: products1.length,
        itemBuilder: (context, index) {
          return ProductCard(product: products1[index],);
        },
        
        padding: EdgeInsets.all(20),
      ),
    );
  }
}

class Product {
  final String name;
  final double price;
  final String imageUrl;
  final double rating;


  Product({
    required this.name,
    required this.price,
    required this.imageUrl,
    required this.rating,
  });
}
