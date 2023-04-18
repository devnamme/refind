import 'package:flutter/material.dart';

class ClothingCard extends StatefulWidget {
  const ClothingCard({
    super.key,
    required this.clothingName,
    required this.clothingSize,
    required this.sellerName,
    this.withDuration = false,
    this.duration = 0,
  });

  final String clothingName;
  final String clothingSize;
  final String sellerName;
  final bool withDuration;
  final int duration;

  @override
  State<ClothingCard> createState() => _ClothingCardState();
}

class _ClothingCardState extends State<ClothingCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        image: DecorationImage(
          image: NetworkImage('https://picsum.photos/900/1600'),
          fit: BoxFit.cover,
        ),
      ),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 48),
      child: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Text(widget.clothingSize),
              ),
              Text(widget.clothingName),
              Text(widget.sellerName),
            ],
          ),
        ],
      ),
    );
  }
}
