import 'package:flutter/material.dart';

class TableCard extends StatelessWidget {
  const TableCard({
    Key? key,
    this.clothingName = "Name of Clothing",
    this.sellerName = "Name of Seller",
    this.size = "XL",
    this.duration = 4,
    this.color = const Color(0xFFE6F0EF),
  }) : super(key: key);

  final String clothingName;
  final String sellerName;
  final String size;
  final int duration;
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
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(child: Container()),
              CircularProgressIndicator(
                value: duration / 10,
                backgroundColor: Colors.white,
                valueColor: const AlwaysStoppedAnimation<Color>(Colors.black),
              ),
            ],
          ),
          Expanded(child: Container()),
          Text(
            size,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.left,
          ),
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
