import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({required this.height, required this.weight});

  final int height;
  final int weight;
  double _bmi = 0;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    switch (_bmi) {
      case >= 25:
        return 'overweight';
      case > 18.5:
        return 'normal';
      default:
        return 'underweight';
    }
  }

  String getInterpretation() {
    switch (_bmi) {
      case >= 25:
        return 'You have a higher than normal body weight. Try to exercise more.';
      case > 18.5:
        return 'You have a normal body weight. Good job!';
      default:
        return 'You have a lower than normal body weight. You can eat a bit more.';
    }
  }
}
