import 'dart:math';

class Functionality {
  Functionality({required this.height, required this.weight});

  final int height;
  final int weight;

  double _bmi = 0;

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

  String getAnalysis() {
    if (_bmi >= 25) {
      return 'You have a higher than normal body weight, please exercise';
    } else if (_bmi > 18.5) {
      return "Everything's Normal, Good Job mate";
    } else {
      return 'Boi, you gotta eat more, you have a lower than normal body weight';
    }
  }
}
