
import 'package:thewaves/screens/nav.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(GroceryOrderApp());
}

class GroceryOrderApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'THEWAVES',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: BottomNavScreen(),
    );
  }
}


