import 'package:flutter/material.dart';

class ItemCardWidget extends StatelessWidget {
  Color bgColor;
  Color iconColor;
  String imgLoc;
  String title;
  String weight;
  String price;

  ItemCardWidget(
    this.bgColor,
    this.iconColor,
    this.imgLoc,
    this.title,
    this.weight,
    this.price,
  );

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25.0),
      ),
      color: bgColor,
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
                  color: iconColor,
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
                imgLoc,
                height: 140,
                width: 140,
              ),
            ),
            Positioned(
              top: 200,
              left: 20,
              child: Text(
                title,
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
                weight,
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
                price,
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
