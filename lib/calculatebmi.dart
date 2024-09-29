import 'dart:math';

class calculate_bmi {
  calculate_bmi({this.hieght = 0, this.weight = 0});
  final int hieght;
  final int weight;

  late double _bmi;

  String calc() {
    _bmi = weight / pow(hieght / 100, 2);
    print(_bmi);
    return _bmi.toStringAsFixed(1);
  }

  String calc_result() {
    if (_bmi >= 25) {
      return 'OVERWEIGHT';
    } else if (_bmi > 18.5) {
      return 'NORMAL';
    } else {
      return 'UNDERWEIGHT';
    }
  }

  String calc_desc() {
    if (_bmi >= 25) {
      return 'Try to exercise regularly and maintain a balanced diet to achieve a healthier weight.';
    } else if (_bmi > 18.5) {
      return 'Great job! Keep maintaining your healthy lifestyle with regular exercise and a balanced diet.';
    } else {
      return 'Consider consulting a nutritionist to help you gain weight in a healthy way, focusing on nutrient-rich foods.';
    }
  }
}
