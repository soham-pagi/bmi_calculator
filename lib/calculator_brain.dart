import 'dart:math';

class CalculatorBrain {
  final int _height;
  final int _weight;

  double? _bmi;

  CalculatorBrain({required  int height, required int weight}) : _height = height, _weight = weight;

  String calculateBMI() {
    _bmi = _weight / pow(_height / 100, 2);

    return _bmi?.toStringAsFixed(1) ?? 'BMI not calculated yet';
  }

  String getResult() {
    if (_bmi == null) return 'BMI not calculated yet';

     if (_bmi! >= 25) {
      return 'Overweight';
    } else if (_bmi! > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi == null) return 'BMI not calculated yet.';

    if (_bmi! >= 25) {
      return 'You have a higher than normal body weight. Try to exercise more';
    } else if (_bmi! >= 18.5) {
      return 'You have a normal body weight. Good job!';
    } else {
      return 'You have a lower than normal body weight. you can eat a bit more';
    }
  }
}