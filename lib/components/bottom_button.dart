import 'package:flutter/material.dart';
import '../constants.dart';

class BottomButton extends StatelessWidget {
  BottomButton({required this.ontap, required this.buttontitle});

  final VoidCallback ontap;
  final String buttontitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // onTap: () {
      onTap: ontap,
      child: Container(
        alignment: Alignment.center,
        child: Text(
          buttontitle,
          style: largeButtonTextStyle,
        ),
        color: bottomContainerColor,
        margin: EdgeInsets.only(top: 15),
        width: double.infinity,
        height: bottomContainerHeight,
      ),
    );
  }
}

