// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  const MyButton(
      {Key? key,
      required this.buttonText,
      required this.color,
      required this.textColor,
      required this.buttonTapped})
      : super(key: key);
  final color;
  final textColor;
  final String buttonText;
  final buttonTapped;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: buttonTapped,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Container(
              color: color,
              child: Center(
                child: Text(
                  buttonText,
                  style: TextStyle(color: textColor, fontSize: 16),
                ),
              ),
            )),
      ),
    );
  }
}
