import 'package:flutter/material.dart';

enum bottomNav {
  home,
  repeat,
  favorite,
  menu,
}

Color color = Color(0xffeed0d1);

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  bottomNav _selected = bottomNav.home;

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
              top: 10,
              left: 20,
              child: IconButton(
                icon: Icon(
                  Icons.home_outlined,
                  color: _selected == bottomNav.home ? color : Colors.grey,
                  size: 32,
                ),
                onPressed: () {
                  setState(() {
                    _selected = bottomNav.home;
                  });
                },
              ),
            ),
            Positioned(
              top: 10,
              left: 110,
              child: IconButton(
                icon: Icon(
                  Icons.repeat,
                  color: _selected == bottomNav.repeat ? color : Colors.grey,
                  size: 32,
                ),
                onPressed: () {
                  setState(() {
                    _selected = bottomNav.repeat;
                  });
                },
              ),
            ),
            Positioned(
              top: 10,
              left: 260,
              child: IconButton(
                icon: Icon(
                  Icons.favorite_border,
                  color: _selected == bottomNav.favorite ? color : Colors.grey,
                  size: 32,
                ),
                onPressed: () {
                  setState(() {
                    _selected = bottomNav.favorite;
                  });
                },
              ),
            ),
            Positioned(
              top: 10,
              right: 20,
              child: IconButton(
                icon: Icon(
                  Icons.menu,
                  color: _selected == bottomNav.menu ? color : Colors.grey,
                  size: 32,
                ),
                onPressed: () {
                  setState(() {
                    _selected = bottomNav.menu;
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
