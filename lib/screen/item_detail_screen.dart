import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class ItemDetailScreen extends StatelessWidget {
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
              CarouselSlider(
                options: CarouselOptions(height: 240.0),
                items: [1, 2, 3].map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(horizontal: 5.0),
                        decoration: BoxDecoration(),
                        child: Image.asset(
                          'assets/images/strawberry.png',
                          height: 60,
                          width: 60,
                        ),
                      );
                    },
                  );
                }).toList(),
              ),
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
                    borderRadius: BorderRadius.circular(16.0),
                    color: Color(0xff2d7d9),
                    border: Border.all(
                      color: Colors.pinkAccent.shade100,
                      width: 0.5,
                    ),
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
                        top: 80,
                        left: 280,
                        child: Text(
                          '12.5 L.E.',
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
                        child: Container(
                          height: 150,
                          width: 360,
                          child: Text(
                            'Strawberries are the sweet-smelling fruit commonly used in cakes, pastries, and other desserts. You’ve most-likely tried strawberry-flavored cheesecakes, shortcake, ice cream, or milkshakes, but do you really know what strawberries taste like in their purest form?',
                            style: TextStyle(
                              fontSize: 18,
                            ),
                            softWrap: true,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 300,
                        left: 30,
                        child: Text(
                          '🚚 Delivery Est: 6/9/2020, 9Am to 3Pm',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 20,
                        left: 30,
                        child: SizedBox(
                          width: deviceSize.width * 0.75,
                          child: FlatButton(
                            padding: EdgeInsets.all(12.0),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16.0),
                            ),
                            color: Color(0xffefa9af),
                            child: Text(
                              'Add to bag',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontFamily: 'Arial',
                              ),
                            ),
                            onPressed: () {},
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 20,
                        left: 350,
                        child: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16.0),
                            color: Color(0xfffefbfc),
                            border: Border.all(
                              color: Color(0xffefa9af),
                            ),
                          ),
                          child: Icon(
                            Icons.favorite,
                            color: Color(0xffefa9af),
                            size: 30,
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
