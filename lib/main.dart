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
                top: 30,
                left: 20,
                child: Text(
                  'Hi,',
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
              ),
              Positioned(
                top: 30,
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
                top: 30,
                left: 140,
                child: Text(
                  '🙈',
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
              ),
              Positioned(
                top: 60,
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
                  height: 60,
                  width: 200,
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'search...',
                      prefixIcon: Icon(Icons.search),
                    ),
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
            ],
          ),
        ),
      ),
    );
  }
}
