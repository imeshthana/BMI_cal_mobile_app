import 'package:flutter/material.dart';

const inactiveCardColor = Color.fromARGB(255, 44, 18, 86);
const activeCardColor = Color.fromARGB(162, 75, 35, 139);
const bottomContainerColor = Color(0xFF804bf0);
const bottomContainerHeight = 80.0;

const labelTextStyle = TextStyle(
  fontSize: 18,
  color: Colors.grey,
);

const numberTextStyle = TextStyle(
  fontSize: 50,
  fontWeight: FontWeight.w900,
);

const largeButtonTextStyle = TextStyle(
  fontSize: 25.0,
  fontWeight: FontWeight.bold,
);

const titleTextStyle = TextStyle(
  fontSize: 40.0,
  fontWeight: FontWeight.bold,
);

const resultTextSTyle = TextStyle(
  fontSize: 25,
  fontWeight: FontWeight.bold,
);

const bmiTextSTyle = TextStyle(
  color: Colors.white,
  fontSize: 60,
  fontWeight: FontWeight.bold,
);

const resultBodyTextStyle = TextStyle(
  fontSize: 20,
  color: Colors.white,
);

Color getBmiTextColor(String category) {
  switch (category) {
    case 'Overweight':
      return Colors.red;
    case 'Normal':
      return Colors.green;
    case 'Underweight':
      return Colors.yellow;
    default:
      return Colors.white; // Default color for unknown category
  }
}
