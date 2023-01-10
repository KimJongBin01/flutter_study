import 'package:flutter/cupertino.dart';

class Button extends StatelessWidget {
  final Color bgColor;
  final Color textColor;
  final String text;

  const Button({
    super.key,
    required this.textColor,
    required this.text,
    required this.bgColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // HTML의 div같은 느낌
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(40),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 15,
          horizontal: 45,
        ),
        child: Text(
          text,
          style: TextStyle(
            fontSize: 20,
            color: textColor,
          ),
        ),
      ),
    );
  }
}
