import 'package:flutter/material.dart';

class RRectButton extends StatelessWidget {
  const RRectButton({
    super.key,
    required String this.text,
    this.backgroundColor = Colors.white,
    this.textColor = Colors.black,
    required VoidCallback this.onTap,
    this.isSmall = false,
  });

  final String text;
  final Color backgroundColor;
  final Color textColor;
  final VoidCallback onTap;

  final bool isSmall;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(isSmall ? 24 : 20)),
          color: backgroundColor,
        ),
        padding: EdgeInsets.symmetric(
          vertical: isSmall ? 8 : 16,
          horizontal: isSmall ? 16 : 24,
        ),
        child: Text(
          text,
          style: isSmall
              ? Theme.of(context).textTheme.labelMedium?.copyWith(
                    color: textColor,
                  )
              : Theme.of(context).textTheme.titleLarge?.copyWith(
                    color: textColor,
                  ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
