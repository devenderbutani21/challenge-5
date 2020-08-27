import 'package:flutter/material.dart';

enum MenuItems {
  forYou,
  grocery,
  fruitsAndVegetable,
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
  MenuItems _selected = MenuItems.forYou;

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
                      _selected = MenuItems.forYou;
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      color: _selected == MenuItems.forYou
                          ? Color(0xffeed0d1)
                          : Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Text(
                      'For You',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: _selected == MenuItems.forYou
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
                      _selected = MenuItems.grocery;
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      color: _selected == MenuItems.grocery
                          ? Color(0xffeed0d1)
                          : Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Text(
                      'Grocery',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: _selected == MenuItems.grocery
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
                      _selected = MenuItems.fruitsAndVegetable;
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      color: _selected == MenuItems.fruitsAndVegetable
                          ? Color(0xffeed0d1)
                          : Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Text(
                      'Fruits & Vegetables',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: _selected == MenuItems.fruitsAndVegetable
                            ? Colors.white
                            : Colors.grey,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 280,
                left: 10,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  color: Color(0xfffceaea),
                  child: Container(
                    height: 270,
                    width: 180,
                  ),
                ),
              ),
              Positioned(
                top: 280,
                left: 210,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  color: Color(0xfffffbd8),
                  child: Container(
                    height: 218.75,
                    width: 180,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
