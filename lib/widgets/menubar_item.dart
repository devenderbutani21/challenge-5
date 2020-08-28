import 'package:flutter/material.dart';

class MenuBarItem extends StatelessWidget {
  bool condition;
  String title;

  MenuBarItem(this.condition, this.title);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: condition ? Color(0xffeed0d1) : Colors.white,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: condition ? Colors.white : Colors.grey,
        ),
      ),
    );
  }
}
