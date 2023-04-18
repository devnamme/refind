import 'package:flutter/material.dart';

class RRectButton extends StatelessWidget {
  const RRectButton({
    super.key,
    required String this.text,
    this.backgroundColor = Colors.white,
    this.textColor = Colors.black,
    required VoidCallback this.onTap,
  });

  final String text;
  final Color backgroundColor;
  final Color textColor;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          color: backgroundColor,
        ),
        padding: EdgeInsets.symmetric(vertical: 16, horizontal: 24),
        child: Text(
          text,
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
                color: textColor,
              ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
