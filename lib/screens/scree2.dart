import 'package:flutter/material.dart';
import 'package:thewaves/screens/screen1.dart';
import 'package:thewaves/screens/screen4.dart';


class ProductCard extends StatelessWidget {
  final Product product;

  ProductCard({required this.product});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white38,
      margin: EdgeInsets.all(8.0),
      elevation: 4.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 200,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(product.imageUrl),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  product.name,
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 4.0),
                Text(
                  '\$${product.price.toStringAsFixed(2)}',
                  style: TextStyle(fontSize: 16.0, color: Colors.grey[800]),
                ),
                SizedBox(height: 4.0),
                Row(
                  children: <Widget>[
                    Icon(Icons.star, color: Colors.orange, size: 16.0),
                    SizedBox(width: 4.0),
                    Text(
                      '${product.rating}',
                      style: TextStyle(fontSize: 16.0),
                    ),
                    Spacer(),
                    ElevatedButton(
                      onPressed: () {
                        showBottomSheet(
                            context: context,
                            builder: (context) {
                              return Container(
                                height: 400,
                                width: 400,
                                child: Column(
                                  children: [
                                    ListTile(trailing: TextButton(onPressed: (){
                                      Navigator.pop(context);
                                    }, child:Text('cancle')),),
                                    Container(
                                      color: Colors.grey,
                                      child: Card(
                                        child: Column(
                                          children: [
                                            Image.network(product.imageUrl,fit: BoxFit.cover,width: 300,height: 200,),
                                            Text(
                                              product.name,
                                              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                                            ),
                                            SizedBox(height: 4.0),
                                            Text(
                                              '\$${product.price.toStringAsFixed(2)}',
                                              style: TextStyle(fontSize: 16.0, color: Colors.grey[800]),
                                            ),
                                            SizedBox(height: 4.0),
                                            ElevatedButton(onPressed: (){
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
                                            }, child:Text('Ordernow'))

                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              );
                            });
                      },
                      child: Text('Add to Cart'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
