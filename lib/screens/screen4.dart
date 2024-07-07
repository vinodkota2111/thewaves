
import 'package:flutter/material.dart';
import 'package:thewaves/screens/giridcard.dart';

class OrdersScreen extends StatelessWidget {

  final List<Map<String, String>> items = [
    {
      'title': 'Item 1',
      'subtitle': 'Description for Item 1',
      'imageUrl': 'https://via.placeholder.com/300?text=Item1',
    },
    {
      'title': 'Item 2',
      'subtitle': 'Description for Item 2',
      'imageUrl': 'https://via.placeholder.com/300?text=Item2',
    },
    {
      'title': 'Item 3',
      'subtitle': 'Description for Item 3',
      'imageUrl': 'https://via.placeholder.com/300?text=Item3',

    },
    // Add more items as needed
  ];
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        title: Text('Orders'),
      ),
      body: GridView.builder(
        padding: EdgeInsets.all(8),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Number of columns
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
          childAspectRatio: 0.75, // Aspect ratio of each grid item
        ),
        itemCount: items.length,
        itemBuilder: (context, index) {
          return GridItemCard(
            imageUrl: items[index]['imageUrl']!,
            title: items[index]['title']!,
            subtitle: items[index]['subtitle']!,
            onTap: () {
              // Handle tap on item
              print('Tapped on ${items[index]['title']}');
            },
          );
        },
      ),
    );
  }
}

