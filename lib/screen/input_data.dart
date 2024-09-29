import 'package:flutter/material.dart';
import 'package:bmi_calculator/screen/result.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calculator/components/icon_conent.dart';
import 'package:bmi_calculator/components/reusablecard.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/components/roundbutton.dart';
import 'package:bmi_calculator/components/bottombuttom.dart';
import 'package:bmi_calculator/calculatebmi.dart';

enum gender {
  female,
  male,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  gender selectedg = gender.female;
  int hieght = 180;
  int weight = 60;
  int age = 20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: reuseablecard(
                    onpress: () {
                      setState(() {
                        selectedg = gender.male;
                      });
                    },
                    colour: selectedg == gender.male
                        ? kActivecolor
                        : kInactivecolor,
                    cardchild:
                        custombox(icon_c: FontAwesomeIcons.mars, tex: 'MALE'),
                  ),
                ),
                Expanded(
                  child: reuseablecard(
                    onpress: () {
                      setState(() {
                        selectedg = gender.female;
                      });
                    },
                    colour: selectedg == gender.female
                        ? kActivecolor
                        : kInactivecolor,
                    cardchild: custombox(
                        icon_c: FontAwesomeIcons.venus, tex: 'FEMALE'),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: reuseablecard(
              colour: kActivecolor,
              cardchild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'HIEGHT',
                    style: kLabeltext,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        '$hieght',
                        style: kNumbertext,
                      ),
                      Text(
                        'cm',
                        style: kLabeltext,
                      )
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      inactiveTrackColor: Color(0xFF8D8E98),
                      thumbColor: Color(0xFFEB1555),
                      activeTrackColor:
                          const Color.fromARGB(255, 221, 218, 218),
                      overlayColor: Color(0x29EB1555),
                      thumbShape:
                          RoundSliderThumbShape(enabledThumbRadius: 12.0),
                      overlayShape:
                          RoundSliderOverlayShape(overlayRadius: 25.0),
                    ),
                    child: Slider(
                      value: hieght.toDouble(),
                      min: 120.0,
                      max: 220,
                      inactiveColor: Color(0xFF8D8E98),
                      onChanged: (double newval) {
                        setState(() {
                          hieght = newval.round();
                        });
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: reuseablecard(
                    cardchild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'WEIGHT',
                          style: kLabeltext,
                        ),
                        Text(
                          weight.toString(),
                          style: kNumbertext,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Roundbutton(
                              icon: FontAwesomeIcons.add,
                              onpress: () {
                                setState(() {
                                  weight++;
                                });
                              },
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Roundbutton(
                              icon: FontAwesomeIcons.minus,
                              onpress: () {
                                setState(() {
                                  weight--;
                                });
                              },
                            )
                          ],
                        ),
                      ],
                    ),
                    colour: kActivecolor,
                  ),
                ),
                Expanded(
                  child: reuseablecard(
                    cardchild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'AGE',
                          style: kLabeltext,
                        ),
                        Text(
                          age.toString(),
                          style: kNumbertext,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Roundbutton(
                              icon: FontAwesomeIcons.add,
                              onpress: () {
                                setState(() {
                                  age++;
                                });
                              },
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Roundbutton(
                              icon: FontAwesomeIcons.minus,
                              onpress: () {
                                setState(() {
                                  age--;
                                });
                              },
                            )
                          ],
                        ),
                      ],
                    ),
                    colour: kActivecolor,
                  ),
                ),
              ],
            ),
          ),
          bottombutton(
            tex: 'CALCULATE',
            ontap: () {
              calculate_bmi calc =
                  calculate_bmi(hieght: this.hieght, weight: this.weight);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Result(
                    result: calc.calc(),
                    resulttex: calc.calc_result(),
                    reseultdesc: calc.calc_desc(),
                  ),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}


//custom widget
