import 'package:flutter/material.dart';

class OfferCardWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
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
    );
  }
}
