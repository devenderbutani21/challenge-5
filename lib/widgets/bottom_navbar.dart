import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      shape: CircularNotchedRectangle(),
      child: Container(
        height: 60.0,
        color: Colors.white,
        child: Stack(
          children: <Widget>[
            Positioned(
              top: 20,
              left: 20,
              child: Icon(
                Icons.home_outlined,
                color: Colors.grey,
                size: 32,
              ),
            ),
            Positioned(
              top: 20,
              left: 110,
              child: Icon(
                Icons.repeat,
                color: Colors.grey,
                size: 32,
              ),
            ),
            Positioned(
              top: 20,
              left: 260,
              child: Icon(
                Icons.favorite_border,
                color: Colors.grey,
                size: 32,
              ),
            ),
            Positioned(
              top: 20,
              right: 20,
              child: Icon(
                Icons.menu,
                color: Colors.grey,
                size: 32,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
