import 'dart:math';

import 'package:flutter/material.dart';

class ClothingCard extends StatefulWidget {
  const ClothingCard({
    super.key,
    required this.clothingName,
    required this.clothingSize,
    required this.sellerName,
  });

  final String clothingName;
  final List<String> clothingSize;
  final String sellerName;

  @override
  State<ClothingCard> createState() => _ClothingCardState();
}

class _ClothingCardState extends State<ClothingCard> {
  Offset position = Offset.zero;
  bool hasDir = false;
  bool isHorizontal = true;

  @override
  Widget build(BuildContext context) {
    return Transform(
      alignment: Alignment.center,
      transform: Matrix4.identity()
        ..translate(
            isHorizontal ? position.dx : 0, isHorizontal ? 0 : position.dy)
        ..rotateZ(isHorizontal ? position.dx / 128 * 5 / 180 * pi : 0),
      child: GestureDetector(
        onPanStart: (details) {
          setState(() {
            position = Offset.zero;
            hasDir = false;
            isHorizontal = true;
          });
        },
        onPanUpdate: (details) {
          setState(() {
            position += details.delta;
            if (!hasDir) {
              if (position.distance > 8) {
                hasDir = true;
                isHorizontal = position.dx.abs() > position.dy.abs();
              }
            }
          });
        },
        onPanEnd: (details) {
          setState(() {
            position = Offset.zero;
            hasDir = false;
          });
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            image: DecorationImage(
              image: NetworkImage('https://picsum.photos/900/1600'),
              fit: BoxFit.cover,
            ),
          ),
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 48),
          child: Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Wrap(
                    direction: Axis.horizontal,
                    children: widget.clothingSize
                        .map(
                          (size) => Container(
                            padding: EdgeInsets.symmetric(horizontal: 12),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(4)),
                            ),
                            child: Text(size),
                          ),
                        )
                        .toList(),
                  ),
                  Text(widget.clothingName),
                  Text(widget.sellerName),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
