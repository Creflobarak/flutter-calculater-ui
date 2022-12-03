import 'package:flutter/material.dart';

class NeuButton extends StatelessWidget {
  final String buttonLabel;
  final buttonColor;
  final textColor;

  const NeuButton({
    super.key,
    required this.buttonLabel,
    required this.buttonColor,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
            color: buttonColor,
            shape: BoxShape.circle,
            boxShadow: [
              //darker shadow on bottom right
              BoxShadow(
                color: Colors.deepPurple.shade700,
                offset: const Offset(4, 4),
                blurRadius: 15,
                spreadRadius: 1,
              ),
              //ligher shadow on top left
              BoxShadow(
                color: Colors.deepPurple.shade200,
                offset: const Offset(-4, -4),
                blurRadius: 15,
                spreadRadius: 1,
              )
            ],
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Colors.deepPurple.shade200,
                  Colors.deepPurple.shade400,
                ],
                stops: const [
                  0.1,
                  0.9,
                ])),
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
    );
  }
}
