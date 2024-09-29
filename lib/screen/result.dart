import 'package:bmi_calculator/components/bottombuttom.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/components/reusablecard.dart';

class Result extends StatelessWidget {
  Result({this.result = '', this.resulttex = '', this.reseultdesc = ''});
  final String result;
  final String resulttex;
  final String reseultdesc;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: ktoptext,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: reuseablecard(
              colour: kActivecolor,
              cardchild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    resulttex.toUpperCase(),
                    style: kresulttext,
                  ),
                  Text(
                    result,
                    style: kmidresulttex,
                  ),
                  Text(
                    reseultdesc,
                    style: kendresulttex,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          bottombutton(
            tex: 'RE-CALCULATE',
            ontap: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}


// SizedBox(
//             height: 10.0,
//           ),
//           Container(
//             child: Text(
//               'Your Result ',
//               style: ktoptext,
//             ),
//           ),
//           Expanded(
//             child: Container(
//               margin: EdgeInsets.all(10.0),
//               decoration: BoxDecoration(
//                   color: kActivecolor,
//                   borderRadius: BorderRadius.circular(10.0)),
//             ),
//           ),
//           SizedBox(
//             height: 10.0,
//           ),
//           Container(
//             child: Center(
//               child: Text(
//                 'RE-CALCULATE',
//                 style: kcalcboxtex,
//               ),
//             ),
//             height: kBottomconthieght,
//             width: double.infinity,
//             color: kBottomcontcolor,
//             margin: EdgeInsets.only(top: 5.0),
//           ),