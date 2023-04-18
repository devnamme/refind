import 'package:flutter/material.dart';

class ClosetCard extends StatelessWidget {
  const ClosetCard({
    Key? key,
    this.clothingName = "Name of Clothing",
    this.sellerName = "Name of Seller",
    this.color = const Color(0xFFE6F0EF),
  }) : super(key: key);

  final String clothingName;
  final String sellerName;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 22,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            clothingName,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            sellerName,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
