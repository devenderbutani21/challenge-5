import 'package:flutter/material.dart';

import './screen/item_detail_screen.dart';
import './widgets/item_card_widget.dart';
import './widgets/offer_card_widget.dart';
import './widgets/bottom_navbar.dart';
import './widgets/menubar_item.dart';
import './widgets/category_item.dart';

enum MenuItems {
  forYou,
  grocery,
  fruitsAndVegetable,
}

enum CategoryItems {
  forYou,
  offers,
  fruits,
  legumes,
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Challenge-5',
      theme: ThemeData(
        primaryColor: Color(0xffeed0d1),
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
  MenuItems _selectedMenuItem = MenuItems.forYou;

//  CategoryItems _selectedCategoryItem = CategoryItems.forYou;

  @override
  Widget build(BuildContext context) {
    Size deviceSize = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            height: deviceSize.height,
            width: deviceSize.width,
            color: Color(0xfffafff9),
            child: Stack(
              children: <Widget>[
                Positioned(
                  top: 20,
                  left: 20,
                  child: Text(
                    'Hi,',
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                ),
                Positioned(
                  top: 20,
                  left: 45,
                  child: Text(
                    'Mohamed',
                    style: TextStyle(
                      color: Color(0xffeed0d1),
                      fontSize: 20.0,
                    ),
                  ),
                ),
                Positioned(
                  top: 20,
                  left: 140,
                  child: Text(
                    '🙈',
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                ),
                Positioned(
                  top: 50,
                  left: 20,
                  child: Text(
                    'All favorite products here. Let\'s grab',
                    style: TextStyle(
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Positioned(
                  top: 90,
                  left: 20,
                  child: Container(
                    height: 50,
                    width: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      border: Border.all(
                        color: Colors.black,
                        width: 0.05,
                      ),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search...',
                        prefixIcon: Icon(Icons.search),
                        border: InputBorder.none,
                        disabledBorder: InputBorder.none,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 90,
                  left: 340,
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      color: Color(0xffeed0d1).withOpacity(0.4),
                    ),
                    child: Icon(
                      Icons.filter,
                      color: Color(0xffeed0d1),
                    ),
                  ),
                ),
                Positioned(
                  top: 160,
                  left: 20,
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        _selectedMenuItem = MenuItems.forYou;
                      });
                    },
                    child: MenuBarItem(
                        _selectedMenuItem == MenuItems.forYou, 'For You'),
                  ),
                ),
                Positioned(
                  top: 160,
                  left: 130,
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        _selectedMenuItem = MenuItems.grocery;
                      });
                    },
                    child: MenuBarItem(
                        _selectedMenuItem == MenuItems.grocery, 'Grocery'),
                  ),
                ),
                Positioned(
                  top: 160,
                  left: 230,
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        _selectedMenuItem = MenuItems.fruitsAndVegetable;
                      });
                    },
                    child: MenuBarItem(
                        _selectedMenuItem == MenuItems.fruitsAndVegetable,
                        'Fruits & Vegetables'),
                  ),
                ),
                CategoryItem('🙎‍♂', 205, 30),
                CategoryItem('🎁', 205, 130),
                CategoryItem('🍉', 205, 230),
                CategoryItem('🥗', 205, 330),
                Positioned(
                  top: 270,
                  left: 20,
                  child: Text(
                    'recommended for you',
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                ),
                Positioned(
                  top: 300,
                  left: 10,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ItemDetailScreen()),
                      );
                    },
                    child: ItemCardWidget(
                      Color(0xfffceaea),
                      Color(0xfffff4f5),
                      'assets/images/strawberry.png',
                      'Strawberry',
                      '1Kg',
                      '12.50 L.E.',
                    ),
                  ),
                ),
                OfferCardWidget(),
                Positioned(
                  top: 590,
                  left: 10,
                  child: ItemCardWidget(
                    Color(0xffd8fecf),
                    Color(0xfebffe7),
                    'assets/images/avocado.png',
                    'Avocado',
                    '2Kg',
                    '12.50 L.E.',
                  ),
                ),
                Positioned(
                  top: 540,
                  left: 210,
                  child: ItemCardWidget(
                    Color(0xffe4e4fe),
                    Color(0xfff1f1fe),
                    'assets/images/grapes.png',
                    'Grapes',
                    '1Kg',
                    '12.50 L.E.',
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavBar(),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.shopping_bag_outlined),
          backgroundColor: Color(0xffefa9af),
          onPressed: () {},
          elevation: 30.0,
        ),
        floatingActionButtonLocation:
            FloatingActionButtonLocation.miniCenterDocked,
      ),
    );
  }
}
