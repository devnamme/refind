import 'package:flutter/material.dart';

// simple button with rounded edges
class SmallButton extends StatelessWidget {
  const SmallButton({
    Key? key,
    required this.text,
    this.color = const Color(0xFF28B5DF),
    this.textColor = Colors.white,
    // required this.onPressed,
  }) : super(key: key);

  final String text;
  final Color color;
  final Color textColor;
  // final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      // customBorder: RoundedRectangleBorder(
      //   borderRadius: BorderRadius.circular(100),
      // ),
      child: Container(
        child: Text(
          text,
          style: TextStyle(
            color: textColor,
          ),
        ),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(100),
        ),
        padding: EdgeInsets.symmetric(
          horizontal: 24,
          vertical: 8,
        ),
      ),
    );
  }
}
