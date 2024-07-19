// import 'dart:math';

// import 'package:bmi_cal/screens/input_page.dart';

// class CalculatorBrain {
//   CalculatorBrain(
//       {required this.height,
//       required this.weight,
//       required this.age,
//       required this.gender})
//       : _bmi = 0;

//   final int height;
//   final int weight;
//   final int age;
//   final Gender? gender;

//   double _bmi;

//   String calculateBMI() {
//     _bmi = weight / pow(height / 100, 2);
//     return _bmi.toStringAsFixed(2);
//   }

//   String getResult() {
//     if (_bmi >= 25) {
//       return 'Overweight';
//     } else if (_bmi > 18.5) {
//       return 'Normal';
//     } else {
//       return 'Underweight';
//     }
//   }

//   String getIntepretation() {
//     if (_bmi >= 25) {
//       return 'You have a higher than normal bmi. Try to exercise more.';
//     } else if (_bmi > 18.5) {
//       return 'You have normal bmi. Your are healthy.';
//     } else {
//       return 'You have a lower than normal body weight. You can eat a bit more.';
//     }
//   }
// }

import 'dart:math';

import 'package:bmi_cal/screens/input_page.dart';

class CalculatorBrain {
  CalculatorBrain(
      {required this.height,
      required this.weight,
      required this.age,
      required this.gender})
      : _bmi = 0;

  final int height;
  final int weight;
  final int age;
  final Gender? gender;

  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(2);
  }

  String getResult() {
    if (gender == Gender.male) {
      if (age >= 19 && age <= 24) {
        if (_bmi >= 25.0) {
          return 'Overweight';
        } else if (_bmi >= 19.0) {
          return 'Normal';
        } else {
          return 'Underweight';
        }
      } else {
        if (_bmi >= 27.0) {
          return 'Overweight';
        } else if (_bmi >= 20.0) {
          return 'Normal';
        } else {
          return 'Underweight';
        }
      }
    } else if (gender == Gender.female) {
      if (age >= 19 && age <= 24) {
        if (_bmi >= 24.0) {
          return 'Overweight';
        } else if (_bmi >= 18.5) {
          return 'Normal';
        } else {
          return 'Underweight';
        }
      } else {
        if (_bmi >= 27.0) {
          return 'Overweight';
        } else if (_bmi >= 19.0) {
          return 'Normal';
        } else {
          return 'Underweight';
        }
      }
    } else {
      return 'Invalid Gender';
    }
  }

  String getIntepretation() {
    if (gender == Gender.male) {
      if (age >= 19 && age <= 24) {
        if (_bmi >= 25.0) {
          return 'You have a higher than normal BMI. Try to exercise more.';
        } else if (_bmi >= 19.0) {
          return 'You have a normal BMI. You are healthy. Good!';
        } else {
          return 'You have a lower than normal body weight. You should eat a bit more.';
        }
      } else {
        if (_bmi >= 27.0) {
          return 'You have a higher than normal BMI. Try to exercise more.';
        } else if (_bmi >= 20.0) {
          return 'You have a normal BMI. You are healthy. Good!';
        } else {
          return 'You have a lower than normal body weight. You should eat a bit more.';
        }
      }
    } else if (gender == Gender.female) {
      if (age >= 19 && age <= 24) {
        if (_bmi >= 24.0) {
          return 'You have a higher than normal BMI. Try to exercise more.';
        } else if (_bmi >= 18.5) {
          return 'You have a normal BMI. You are healthy. Good!';
        } else {
          return 'You have a lower than normal body weight. You should eat a bit more.';
        }
      } else {
        if (_bmi >= 27.0) {
          return 'You have a higher than normal BMI. Try to exercise more.';
        } else if (_bmi >= 19.0) {
          return 'You have a normal BMI. You are healthy. Good!';
        } else {
          return 'You have a lower than normal body weight. You should eat a bit more.';
        }
      }
    } else {
      return 'Invalid Gender';
    }
  }
}
