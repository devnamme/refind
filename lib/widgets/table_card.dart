import 'package:flutter/foundation.dart';
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
        image: const DecorationImage(
          image: NetworkImage('https://picsum.photos/900/1600'),
          fit: BoxFit.cover,
        ),
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 14,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(child: Container()),
              Stack(
                children: [
                  CircularProgressIndicator(
                    value: duration / 10,
                    valueColor:
                        const AlwaysStoppedAnimation<Color>(Color(0xFF4DDDA0)),
                  ),
                ],
              ),
            ],
          ),
          Expanded(child: Container()),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            decoration: BoxDecoration(
              color: const Color(0xFF8BF8C4),
              borderRadius: BorderRadius.circular(4),
            ),
            child: Text(
              size,
              style: Theme.of(context).textTheme.labelSmall?.copyWith(
                    color: Colors.black,
                    height: 16 / 11,
                  ),
              textAlign: TextAlign.left,
            ),
          ),
          const SizedBox(
            height: 2,
          ),
          Text(
            clothingName,
            style: Theme.of(context).textTheme.labelLarge?.copyWith(
                  color: Colors.white,
                ),
          ),
          const SizedBox(
            height: 2,
          ),
          Text(
            sellerName,
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: Colors.white,
                ),
          ),
        ],
      ),
    );
  }
}
