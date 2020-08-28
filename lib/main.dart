import 'package:challenge5/screen/item_detail_screen.dart';
import 'package:flutter/material.dart';

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
  CategoryItems _selectedCategoryItem = CategoryItems.forYou;

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size deviceSize = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Container(
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
                  child: Container(
                    padding: EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      color: _selectedMenuItem == MenuItems.forYou
                          ? Color(0xffeed0d1)
                          : Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Text(
                      'For You',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: _selectedMenuItem == MenuItems.forYou
                            ? Colors.white
                            : Colors.grey,
                      ),
                    ),
                  ),
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
                  child: Container(
                    padding: EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      color: _selectedMenuItem == MenuItems.grocery
                          ? Color(0xffeed0d1)
                          : Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Text(
                      'Grocery',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: _selectedMenuItem == MenuItems.grocery
                            ? Colors.white
                            : Colors.grey,
                      ),
                    ),
                  ),
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
                  child: Container(
                    padding: EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      color: _selectedMenuItem == MenuItems.fruitsAndVegetable
                          ? Color(0xffeed0d1)
                          : Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Text(
                      'Fruits & Vegetables',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: _selectedMenuItem == MenuItems.fruitsAndVegetable
                            ? Colors.white
                            : Colors.grey,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 205,
                left: 30,
                child: Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.grey.shade400,
                      width: 0.05,
                    ),
                  ),
                  child: Center(
                    child: Text(
                      '🙎‍♂',
                      style: TextStyle(
                        fontSize: 24,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 205,
                left: 130,
                child: Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.grey.shade400,
                      width: 0.05,
                    ),
                  ),
                  child: Center(
                    child: Text(
                      '🎁',
                      style: TextStyle(
                        fontSize: 24,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 205,
                left: 230,
                child: Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.grey.shade400,
                      width: 0.05,
                    ),
                  ),
                  child: Center(
                    child: Text(
                      '🍉',
                      style: TextStyle(
                        fontSize: 24,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 205,
                left: 330,
                child: Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.grey.shade400,
                      width: 0.05,
                    ),
                  ),
                  child: Center(
                    child: Text(
                      '🥗',
                      style: TextStyle(
                        fontSize: 24,
                      ),
                    ),
                  ),
                ),
              ),
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
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    color: Color(0xfffceaea),
                    child: Container(
                      height: 270,
                      width: 180,
                      child: Stack(
                        children: <Widget>[
                          Positioned(
                            top: 0,
                            left: 0,
                            child: Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25.0),
                                color: Color(0xfffff4f5),
                              ),
                              child: Center(
                                child: Icon(
                                  Icons.add,
                                  size: 32,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 70,
                            left: 30,
                            child: Image.asset(
                              'assets/images/strawberry.png',
                              height: 140,
                              width: 140,
                            ),
                          ),
                          Positioned(
                            top: 200,
                            left: 20,
                            child: Text(
                              'Strawberry',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Positioned(
                            top: 200,
                            left: 120,
                            child: Text(
                              '1Kg',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                          Positioned(
                            top: 225,
                            left: 20,
                            child: Text(
                              '12.50 L.E.',
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 300,
                left: 210,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  color: Color(0xfffffbd8),
                  child: Container(
                    height: 218.75,
                    width: 180,
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          top: 30,
                          left: 20,
                          child: Text(
                            'best Khodar offers',
                            style: TextStyle(
                              color: Color(0xffFDD451),
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Positioned(
                          top: 60,
                          left: 40,
                          child: Text(
                            '50% Off',
                            style: TextStyle(
                              color: Color(0xffFDD451),
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 80,
                          left: 10,
                          child: Container(
                            width: 160,
                            height: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12.0),
                              color: Colors.white,
                              border: Border.all(
                                color: Color(0xfddab38),
                                width: 3,
                              ),
                            ),
                            child: FlatButton(
                              padding: EdgeInsets.only(
                                top: 8.0,
                                bottom: 8.0,
                                left: 16.0,
                                right: 16.0,
                              ),
                              child: Text(
                                'Best Offers',
                                style: TextStyle(
                                  color: Color(0xffFDD451),
                                  fontSize: 16,
                                  fontFamily: 'Arial',
                                ),
                              ),
                              onPressed: () {},
                            ),
                          ),
                        ),
                        Positioned(
                          top: 130,
                          left: 40,
                          child: Image.asset(
                            'assets/images/cherry.png',
                            height: 100,
                            width: 100,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              title: Text('Home'),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.repeat,
              ),
              title: Text('Repeat'),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite_border_outlined,
              ),
              title: Text('Favorite'),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite_border_outlined,
              ),
              title: Text('Favorite'),
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Color(0xffefa9af),
          backgroundColor: Colors.white,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
