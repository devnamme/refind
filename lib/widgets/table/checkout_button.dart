import 'package:flutter/material.dart';

class CheckoutButton extends StatelessWidget {
  const CheckoutButton({
    super.key,
    required String this.text,
    this.backgroundColor = const Color(0xFF82EFBC),
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
          borderRadius: BorderRadius.all(Radius.circular(100)),
          color: backgroundColor,
        ),
        padding: EdgeInsets.symmetric(vertical: 16, horizontal: 24),
        child: Text(
          text,
          style: Theme.of(context).textTheme.labelMedium?.copyWith(
                color: textColor,
                fontWeight: FontWeight.w600,
              ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
