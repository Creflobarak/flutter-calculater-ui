import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String buttonLabel;
  final buttonColor;
  final textColor;

  const MyButton({
    super.key,
    required this.buttonLabel,
    required this.buttonColor,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Container(
          height: 50,
          width: 50,
          color: buttonColor,
          child: Center(
            child: Text(
              buttonLabel,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: textColor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
