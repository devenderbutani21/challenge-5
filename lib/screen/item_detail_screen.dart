import 'package:flutter/material.dart';

class ItemDetailScreen extends StatelessWidget {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    Size deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: deviceSize.height,
          width: deviceSize.width,
          decoration: BoxDecoration(
            color: Color(0xffeed0d1),
          ),
          child: Stack(
            children: <Widget>[
              Positioned(
                top: 10,
                left: 10,
                child: IconButton(
                  icon: Icon(Icons.close),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  iconSize: 30,
                ),
              ),
              Positioned(
                top: 10,
                left: 350,
                child: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    color: Color(0xffeed0d1),
                  ),
                  child: Icon(
                    Icons.shopping_bag_outlined,
                    color: Colors.black,
                    size: 30,
                  ),
                ),
              ),
              Positioned(
                top: 220,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: const Radius.circular(60.0),
                      topRight: const Radius.circular(60.0),
                    ),
                  ),
                  height: deviceSize.height * 0.65,
                  width: deviceSize.width,
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        top: 30,
                        left: 30,
                        child: Text(
                          'Strawberry',
                          style: TextStyle(
                            fontSize: 34,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 80,
                        left: 30,
                        child: Text(
                          '1Kg',
                          style: TextStyle(
                            fontSize: 28,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 130,
                        left: 30,
                        child: Text(
                          'product details',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 160,
                        left: 30,
                        child: Text(
                          'Strawberries are the sweet-smelling fruit commonly used in cakes, pastries, and other desserts. You’ve most-likely tried strawberry-flavored cheesecakes, shortcake, ice cream, or milkshakes, but do you really know what strawberries taste like in their purest form?',
                          style: TextStyle(
                            fontSize: 18,
                          ),
                          softWrap: true,
                        ),
                      ),
                      Positioned(
                        top: 80,
                        left: 270,
                        child: Text(
                          '12.50 L.E.',
                          style: TextStyle(
                            fontSize: 28,
                          ),
                        ),
                      ),
                    ],
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
