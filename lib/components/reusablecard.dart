import 'package:flutter/material.dart';

class reuseablecard extends StatelessWidget {
  //key is useful to moddify a property in moving widgets
  reuseablecard({required this.colour, this.cardchild, this.onpress});
  final Color colour;
  final Widget? cardchild;
  final onpress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress,
      child: Container(
        child: cardchild,
        margin: EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
