import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/screen/result.dart';

class bottombutton extends StatelessWidget {
  bottombutton({required this.ontap, required this.tex});
  final Function() ontap;
  final String tex;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        child: Center(
          child: Text(
            tex,
            style: kcalcboxtex,
          ),
        ),
        height: kBottomconthieght,
        width: double.infinity,
        margin: EdgeInsets.only(top: 10.0),
        color: kBottomcontcolor,
      ),
    );
  }
}
