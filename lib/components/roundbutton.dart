import 'package:flutter/material.dart';

class Roundbutton extends StatelessWidget {
  Roundbutton({required this.icon, required this.onpress});
  final Function() onpress;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      constraints: BoxConstraints.tightFor(
        width: 40.0,
        height: 40.0,
      ),
      elevation: 6.0,
      onPressed: onpress,
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
    );
  }
}
