import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

class custombox extends StatelessWidget {
  custombox({required this.icon_c, this.tex = 'def'});

  final IconData icon_c;
  final String tex;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon_c,
          size: 70.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          tex,
          style: kLabeltext,
        )
      ],
    );
  }
}
