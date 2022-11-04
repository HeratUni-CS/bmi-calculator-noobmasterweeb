import 'dart:math';

class BmiLogic {
  BmiLogic({this.height, this.weight});

  final int height;
  final int weight;

  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'are you serious go to fucking gym. ';
    } else if (_bmi >= 18.5) {
      return 'hmmm , you are fine but go to gym its good for you';
    } else {
      return 'how you are still alive? \n Eat brother eat'
          '. ';
    }
  }
}