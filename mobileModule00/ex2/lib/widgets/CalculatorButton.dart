import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget {
  const CalculatorButton({super.key});

  @override
  Widget build(BuildContext context) {

    final buttonStyle = ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: Colors.black,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(0),
      ),
      backgroundColor: const Color(0xFF607D8B),
    );

    return Expanded(
      child: SizedBox(
        height: 60,
        child: ElevatedButton(
          onPressed: () {},
          style: buttonStyle,
          child: const Text(
            '=',
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}

