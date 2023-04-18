import 'package:flutter/material.dart';

class AddListing extends StatelessWidget {
  const AddListing({
    Key? key,
    this.color = const Color(0xFFE6F0EF),
  }) : super(key: key);

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      height: 240,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 22,
      ),
      child: Center(
        child: Icon(
          Icons.add_circle_sharp,
          size: 100,
          color: const Color(0xFFBCBCBC),
        ),
      ),
    );
  }
}
