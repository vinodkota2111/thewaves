//import 'package:easyfood/drinks/Widget/Homelist.dart';
import 'package:thewaves/food/Widget/Homelist.dart';
import 'package:thewaves/food2/Widget/Homelist.dart';
import 'package:thewaves/food3/Widget/Homelist.dart';
import 'package:thewaves/screens/screen1.dart';
//import 'package:easyfood/snacks/Widget/Homelist.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:thewaves/Widget/Homelist.dart';
//import 'package:video_player/video_player.dart';
import '../main.dart';
//import '../salad/Widget/Homelist.dart';



class Item {
  final String name;
  final String description;

  Item({required this.name, required this.description});
}

class EcommerceApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      title: 'E-Commerce Home',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  final List<String> _images = [
    'https://i.pinimg.com/736x/6a/86/c3/6a86c387495a30851e5843a582c7b6f2.jpg',
    'https://i.pinimg.com/564x/04/ab/99/04ab99312386238137a8feaa8e9e0bcc.jpg',
    'https://i.pinimg.com/564x/1d/57/c6/1d57c6cb2d06d34b7acec839777a3650.jpg',
    'https://i.pinimg.com/236x/18/c2/e2/18c2e221e3ae668e421bb56ba3397f31.jpg'
    // Add more image paths as needed
  ];


  final List<Map<String, dynamic>> productsinglee2 = [
    {
      'imageUrl': 'https://i.pinimg.com/236x/b9/ef/f3/b9eff3eaf21b72053628024157ee2c15.jpg',
      'name': 'paasta',
      'price': '\$20.00',
      'description': 'This is a great product.',
      'rating': 4.5,
    },
    {
      'imageUrl': 'https://i.pinimg.com/236x/a4/3b/d8/a43bd8140c7bda2c489a64824805ff5b.jpg',
      'name': 'cup cake',
      'price': '\$20.00',
      'description': 'This is a great product.',
      'rating': 4.5,
    },
    {
      'imageUrl': 'https://i.pinimg.com/564x/07/21/32/072132759e23ee009f4f9ba04bdc8845.jpg',
      'name': 'cheeses',
      'price': '\$20.00',
      'description': 'This is a great product.',
      'rating': 4.5,
    },
    {
      'imageUrl': 'https://i.pinimg.com/236x/af/7f/e1/af7fe14b33ef1bba615b1c36af8ad572.jpg',
      'name': 'cherry cup',
      'price': '\$20.00',
      'description': 'This is a great product.',
      'rating': 4.5,
    },

    {
      'imageUrl': 'https://i.pinimg.com/236x/8b/a2/f7/8ba2f727df2b40a33c40dbaa09ff8ddf.jpg',
      'name': 'waffles',
      'price': '\$20.00',
      'description': 'This is a great product.',
      'rating': 4.5,
    },

    {
      'imageUrl': 'https://i.pinimg.com/236x/53/12/0f/53120f39addc5818d6abd11f1bf98c71.jpg',
      'name': 'nut roll',
      'price': '\$20.00',
      'description': 'This is a great product.',
      'rating': 4.5,
    },

  ];




  final List<Map<String, dynamic>> productsinglee1 = [
    {
      'imageUrl': 'https://i.pinimg.com/236x/e9/0e/29/e90e2908056619b81143a7e96ff86d40.jpg',
      'name': 'berry shake',
      'price': '\$20.00',
      'description': 'This is a great product.',
      'rating': 4.5,
    },
    {
      'imageUrl': 'https://i.pinimg.com/236x/70/6f/d7/706fd7b4ac63fd6e2c857e1ef034e46b.jpg',
      'name': 'Product 1',
      'price': '\$20.00',
      'description': 'This is a great product.',
      'rating': 4.5,
    },
    {
      'imageUrl': 'https://i.pinimg.com/236x/1e/b7/0d/1eb70d22a61a79776d95578196bfc3ff.jpg',
      'name': 'Product 1',
      'price': '\$20.00',
      'description': 'This is a great product.',
      'rating': 4.5,
    },
    {
      'imageUrl': 'https://i.pinimg.com/236x/67/35/77/673577903249324befdb3f6d2990f3bc.jpg',
      'name': 'Product 1',
      'price': '\$20.00',
      'description': 'This is a great product.',
      'rating': 4.5,
    },

    {
      'imageUrl': 'https://i.pinimg.com/236x/64/5c/a4/645ca406c75f3976158a3b17a6fc03bd.jpg',
      'name': 'Product 1',
      'price': '\$20.00',
      'description': 'This is a great product.',
      'rating': 4.5,
    },

    {
      'imageUrl': 'https://i.pinimg.com/236x/d9/32/aa/d932aa899499a908b3e4f36bf1f2c950.jpg',
      'name': 'Product 1',
      'price': '\$20.00',
      'description': 'This is a great product.',
      'rating': 4.5,
    },

  ];


  final List<Map<String, dynamic>> productsinglee = [
    {
      'imageUrl': 'https://i.pinimg.com/236x/82/72/dd/8272dd7e6ae9548e5dc570abc4891418.jpg',
      'name': 'straberry shake',
      'price': '\$20.00',
      'description': 'This is a great product.',
      'rating': 4.5,
    },
    {
      'imageUrl': 'https://i.pinimg.com/236x/b0/9c/20/b09c20374519021fb8e30a5390905fe9.jpg',
      'name': 'oreo shake',
      'price': '\$20.00',
      'description': 'This is a great product.',
      'rating': 4.5,
    },

    {
      'imageUrl': 'https://i.pinimg.com/564x/2b/a1/24/2ba124de00eeda8e296042ad2579118d.jpg',
      'name': 'choclate shake',
      'price': '\$20.00',
      'description': 'This is a great product.',
      'rating': 4.5,
    },

  ];


  final List<Map<String, dynamic>> products = [
    {
      'imageUrl': 'https://i.pinimg.com/236x/b2/fb/0d/b2fb0d3e12535e942a0fa5bc3c49a4a2.jpg',
      'name': 'donuts',
      'price': '\$20.00',
      'description': 'This is a great product.',
      'rating': 4.5,
    },
    {
      'imageUrl': 'https://i.pinimg.com/236x/f8/f5/e4/f8f5e470c23ff903ef045d5101f443a7.jpg',
      'name': 'waffles',
      'price': '\$30.00',
      'description': 'This product is awesome.',
      'rating': 4.0,
    },
    {
      'imageUrl': 'https://i.pinimg.com/236x/8b/06/9e/8b069ec7817782aad9a1a218bcbe57fa.jpg',
      'name': 'croissant',
      'price': '\$40.00',
      'description': 'You will love this product.',
      'rating': 4.8,
    },
    {
      'imageUrl': 'https://i.pinimg.com/236x/f8/f9/b8/f8f9b8a2f77aeefccad1914d0d9f17ea.jpg',
      'name': 'Donuts',
      'price': '\$20.00',
      'description': 'This is a great product.',
      'rating': 4.5,
    },
    {
      'imageUrl': 'https://i.pinimg.com/236x/c5/2d/45/c52d454bf256841ea8934cd3d760d7b1.jpg',
      'name': 'pasta',
      'price': '\$30.00',
      'description': 'This product is awesome.',
      'rating': 4.0,
    },
    {
      'imageUrl': 'https://i.pinimg.com/236x/25/40/7d/25407de873636a95ac778b2670d85d49.jpg',
      'name': 'salads',
      'price': '\$40.00',
      'description': 'You will love this product.',
      'rating': 4.8,
    },
    {
      'imageUrl': 'https://i.pinimg.com/236x/29/f9/f1/29f9f1c2ff0f00a4cb5266c0fb8061c6.jpg',
      'name': 'white wine',
      'price': '\$20.00',
      'description': 'This is a great product.',
      'rating': 4.5,
    },
    {
      'imageUrl': 'https://i.pinimg.com/236x/2e/fc/67/2efc67927897f5fd6e96637f9aedba14.jpg',
      'name': 'red wine',
      'price': '\$30.00',
      'description': 'This product is awesome.',
      'rating': 4.0,
    },

    // Add more products as needed
  ];


  late List<Item> _items;
  late List<Item> _filteredItems;

  @override
  void initState() {
    super.initState();
    // Sample list of items
    _items = [
      Item(name: 'Item 1', description: 'Description for Item 1'),
      Item(name: 'Item 2', description: 'Description for Item 2'),
      Item(name: 'Item 3', description: 'Description for Item 3'),
      Item(name: 'Item 4', description: 'Description for Item 4'),
      Item(name: 'Item 5', description: 'Description for Item 5'),
      Item(name: 'Item 6', description: 'Description for Item 6'),
    ];
    _filteredItems = _items;
  }

  void _filterList(String query) {
    setState(() {
      _filteredItems = _items
          .where((item) =>
      item.name.toLowerCase().contains(query.toLowerCase()) ||
          item.description.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        width: 200,
        child: ListView(
          children: [
            DrawerHeader(child: Column(
              children: [



                Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Image.network(
                        'https://i.pinimg.com/236x/0a/11/e7/0a11e7ab6cd19663cea58dca3b2b1217.jpg',
                        width: 70,
                        height: 70,
                        fit: BoxFit.cover,
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Text('kotavinod',),
                  ],
                ),
                Text('thewaves@gmail.com')
              ],
            ), decoration: BoxDecoration(
              image: DecorationImage(image: NetworkImage(
                  'https://i.pinimg.com/236x/f8/1e/aa/f81eaafae688f5e319b99fdbcafdf22d.jpg',scale: 50/45)),
            ),),

            Card(
              child: ListTile(
                onTap: () {

                },
                leading: Icon(Icons.home),
                title: Text('Home'),
                trailing: Icon(Icons.arrow_forward_ios_rounded),

              ),
            ),

            Card(
              child: ListTile(
                onTap: () {

                },
                leading: Icon(Icons.account_circle_outlined),
                title: Text('About'),
                trailing: Icon(Icons.arrow_forward_ios_rounded),

              ),
            ),


            Card(
              child: ListTile(
                onTap: () {

                },
                leading: Icon(Icons.drag_indicator),
                title: Text('Contact'),
                trailing: Icon(Icons.arrow_forward_ios_rounded),

              ),
            ),

            Card(
              child: ListTile(
                onTap: () {

                },
                leading: Icon(Icons.info),
                title: Text('info'),
                trailing: Icon(Icons.arrow_forward_ios_rounded),

              ),
            ),

            Card(
              child: ListTile(
                onTap: () {
                },
                leading: Icon(Icons.person),
                title: Text('Home'),
                trailing: Icon(Icons.login),
              ),
            ),


          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: Container(

          padding: EdgeInsets.all(8.0),
          child: Text(
            'THEWAVES',
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontFamily: 'Roboto',
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [


            Container(
              padding: EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                  color: Colors.lightBlue,
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20))),

              child: Container(

                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),

                child: TextField(
                  onChanged: _filterList,
                  decoration: InputDecoration(
                    hintText: 'Search...',
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ),
              ),
            ),




            Container(
              padding: EdgeInsets.all(9.0),
              height: 60,
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
              child: Card(child: Center(child: Text('THEWAVES MAKE U TOXIC',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),))),
            ),
            Column(
              children: [
                CarouselSlider(
                  options: CarouselOptions(
                    height: 200.0,
                    autoPlay: true,
                    onPageChanged: (index, reason) {
                      setState(() {
                        _currentIndex = index;
                      });
                    },
                  ),
                  items: _images.map((imagePath) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                          width: MediaQuery
                              .of(context)
                              .size
                              .width,
                          margin: EdgeInsets.symmetric(horizontal: 5.0),
                          decoration: BoxDecoration(
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.network(
                              imagePath,
                              fit: BoxFit.cover,),
                          ),
                        );
                      },
                    );
                  }).toList(),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: _images.map((image) {
                    int index = _images.indexOf(image);
                    return Container(
                      width: 8.0,
                      height: 8.0,
                      margin: EdgeInsets.symmetric(horizontal: 2.0),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: _currentIndex == index
                            ? Colors.blueAccent
                            : Colors.grey,
                      ),
                    );
                  }).toList(),
                ),
              ],
            ),

            Padding(
              padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 8.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(productsinglee.length, (index) {
                    return Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        height: 90,
                        width: 120,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.network(
                            productsinglee[index]['imageUrl'],
                            fit: BoxFit.cover,
                          ),

                        ),
                      ),
                    );
                  }),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 8.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(productsinglee1.length, (index) {
                    return Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.red,
                        ),
                        height: 70,
                        width: 70,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: Image.network(
                            productsinglee1[index]['imageUrl'],
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    );
                  }),
                ),
              ),
            ),

            Container(
              padding: EdgeInsets.all(9.0),
              height: 60,
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
              child: Card(child: Center(child: Text('FOODIE HUB',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),))),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InkWell(

                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => MyApp1(),));
                        },
                        child: Container(
                          height: 160,
                          width: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Card(
                            shadowColor: Colors.greenAccent,
                            color: Colors.white,
                            child: Column(
                              children: [
                                Container(
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.network(
                                      'https://i.pinimg.com/236x/5a/5a/d9/5a5ad91980f97e2b7cc3f733614b75ef.jpg',
                                      height: 150,
                                      width: 150,
                                      fit: BoxFit.cover,),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),

                      InkWell(

                        onTap: () {

                          Navigator.push(context, MaterialPageRoute(builder: (context) => MyApp2(),));
                        },
                        child: Container(
                          height: 160,
                          width: 150,
                          child: Card(
                            shadowColor: Colors.greenAccent,
                            color: Colors.white,
                            child: Column(
                              children: [
                                Container(
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.network(
                                      'https://i.pinimg.com/236x/6f/36/c8/6f36c874861a46b8e4208454157a1d6b.jpg',
                                      height: 150,
                                      width: 150,
                                      fit: BoxFit.cover,),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),

                    ],
                  ),
                  SizedBox(height: 30,),


                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InkWell(

                        onTap: () {

                          Navigator.push(context, MaterialPageRoute(builder: (context) => MyApp3(),));
                        },
                        child: Container(
                          height: 160,
                          width: 150,
                          child: Card(
                            shadowColor: Colors.greenAccent,
                            color: Colors.white,
                            child: Column(
                              children: [
                                Container(
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.network(
                                      'https://i.pinimg.com/236x/eb/ca/6c/ebca6cecd9871d7b8506407d3bff4481.jpg',
                                      height: 150,
                                      width: 150,
                                      fit: BoxFit.cover,),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),


                      InkWell(

                        onTap: () {
                         Navigator.push(context, MaterialPageRoute(builder: (context) => MyApp4(),));
                        },
                        child: Container(
                          height: 160,
                          width: 150,
                          child: Card(
                            shadowColor: Colors.greenAccent,
                            color: Colors.white,
                            child: Column(
                              children: [
                                Container(
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.network(
                                      'https://i.pinimg.com/236x/56/ea/64/56ea6433e7a6b3c2bbbcdde9d1022867.jpg',
                                      height: 150,
                                      width: 150,
                                      fit: BoxFit.cover,),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),

                    ],
                  ),
                  Container(
                    padding: EdgeInsets.all(9.0),
                    height: 60,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.white,
                    child: Card(child: Center(child: Text('_____SEARCH NEW ONE_____',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),))),
                  ),
                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 8.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Column(
                  children: [

                    Row(
                      children: List.generate(productsinglee1.length, (index) {
                        var item;
                        return Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                height: 100,
                                width: 120,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.only(topRight: Radius.circular(10),topLeft: Radius.circular(10)),
                                  child: Image.network(
                                    productsinglee1[index]['imageUrl'],
                                    fit: BoxFit.cover,
                                  ),

                                ),
                              ),

                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10)),
                                ),

                                height: 100,
                                width: 120,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(0),
                                  child:Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                        children: [
                                          Text('Item1'),
                                          Text('rs.100'),
                                        ],
                                      ),

                                      Row(
                                        //mainAxisAlignment: MainAxisAlignment.spaceAround,
                                        children: [
                                          SizedBox(width:5),
                                          Icon(Icons.star_half_sharp,color:Colors.yellow,),
                                          Icon(Icons.star_half_sharp,color:Colors.yellow,),
                                        ],
                                      ),

                                      ElevatedButton(onPressed: (){}, child: Text('Add to cart',style: TextStyle(fontSize: 10),)),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      }),
                    ),

                    Row(
                      children: List.generate(productsinglee2.length, (index) {
                        var item;
                        return Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                height: 100,
                                width: 120,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.only(topRight: Radius.circular(10),topLeft: Radius.circular(10)),
                                  child: Image.network(
                                    productsinglee2[index]['imageUrl'],
                                    fit: BoxFit.cover,
                                  ),

                                ),
                              ),

                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10)),
                                ),

                                height: 100,
                                width: 120,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(0),
                                  child:Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                        children: [
                                          Text( productsinglee2[index]['name'],),
                                          Text( productsinglee2[index]['price'],),
                                        ],
                                      ),

                                      Row(
                                        //mainAxisAlignment: MainAxisAlignment.spaceAround,
                                        children: [
                                          SizedBox(width:5),
                                          Icon(Icons.star_half_sharp,color:Colors.yellow,),
                                          Icon(Icons.star_half_sharp,color:Colors.yellow,),
                                        ],
                                      ),

                                      ElevatedButton(onPressed: (){}, child: Text('Add to cart',style: TextStyle(fontSize: 10),)),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      }),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(9.0),
              height: 60,
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
              child: Card(child: Center(child: Text('__DONUT KILL UR VIBE__',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),))),
            ),


            GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
                childAspectRatio: 1.6,
              ),
              itemCount: products.length,
              itemBuilder: (context, index) {
                final product = products[index];
                return Card(
                  margin: EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: ClipRRect(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(8.0),
                            topRight: Radius.circular(8.0),
                          ),
                          child: Container(

                            child: Column(
                              children: [
                                Row(
                                  children: [

                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(topRight: Radius.circular(10),bottomLeft: Radius.circular(10)),
                                      ),
                                      child: ClipRRect(
                                        borderRadius:BorderRadius.only(topLeft: Radius.circular(10),bottomLeft: Radius.circular(10)),
                                        child: Image.network(
                                          product['imageUrl'],
                                          fit: BoxFit.cover,
                                          height: 209,
                                          width: 160,
                                        ),
                                      ),
                                    ),
                                    Container(

                                      height: 209,
                                      width: 184,
                                      decoration:BoxDecoration(
                                        borderRadius: BorderRadius.only(topRight: Radius.circular(10),bottomRight: Radius.circular(10)),
                                        color: Colors.white
                                      ),
                                      child:  Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text(
                                              product['name'],
                                              style: TextStyle(
                                                fontSize: 16.0,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),

                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Text(
                              product['price'],
                              style: TextStyle(
                                fontSize: 14.0,
                                color: Colors.green,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              product['description'],
                              style: TextStyle(
                                fontSize: 12.0,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all( 8.0),
                            child: Row(
                              children: List.generate(5, (i) {
                                return Icon(
                                  i < product['rating']
                                      ? Icons.star
                                      : Icons.star_border,
                                  size: 16.0,
                                  color: Colors.amber,
                                );
                              }),
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: ElevatedButton(onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen(),));
                            }, child: Text('viewmore')),
                          ),


                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),




                    ],
                  ),
                );
              },
            ),
            SizedBox(height: 20,),
            Container(
              padding: EdgeInsets.all(9.0),
              height: 60,
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
              child: Card(child: Center(child: Text('______SORRY CHOOSE ANY ITEM FROM ABOVE LIST🙄_____',style: TextStyle(fontSize: 11,fontWeight: FontWeight.bold,color: Colors.black),))),
            ),
          ],
        ),
      ),

    );
  }
}














