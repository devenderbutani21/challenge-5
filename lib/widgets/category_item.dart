import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  String item;
  double topPos;
  double leftPos;

  CategoryItem(this.item, this.topPos, this.leftPos);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: topPos,
      left: leftPos,
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
            item,
            style: TextStyle(
              fontSize: 24,
            ),
          ),
        ),
      ),
    );
  }
}
