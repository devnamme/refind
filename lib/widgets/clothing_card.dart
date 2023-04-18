import 'dart:math';

import 'package:flutter/material.dart';
import 'package:refind/constants/app_colors.dart';

class ClothingCard extends StatefulWidget {
  const ClothingCard({
    super.key,
    required this.clothingName,
    required this.clothingSize,
    required this.sellerName,
    this.withDuration = false,
    this.duration = 0,
    required this.onPeek,
    required this.startStopwatch,
  });

  final String clothingName;
  final List<String> clothingSize;
  final String sellerName;
  final bool withDuration;
  final int duration;
  final Function(double, double) onPeek;
  final VoidCallback startStopwatch;

  @override
  State<ClothingCard> createState() => _ClothingCardState();
}

class _ClothingCardState extends State<ClothingCard> {
  Offset position = Offset.zero;
  bool hasDir = false;
  bool isHorizontal = true;

  bool isScrolling = false;
  bool lockedDown = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Transform(
      alignment: Alignment.center,
      transform: Matrix4.identity()
        ..translate(isHorizontal ? position.dx : 0)
        ..rotateZ(isHorizontal ? position.dx / 128 * 5 / 180 * pi : 0),
      child: GestureDetector(
        onPanStart: (details) {
          setState(() {
            isScrolling = true;

            position = Offset.zero;
            widget.onPeek(0, 0);

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

            if (!isHorizontal) {
              widget.onPeek(
                min(
                    1,
                    max(position.dy - 300, 0) /
                        MediaQuery.of(context).size.height),
                position.dy,
              );

              if (position.dy > 100) {
                setState(() {
                  lockedDown = true;
                });
              } else {
                setState(() {
                  lockedDown = false;
                });
              }
            }
          });
        },
        onPanEnd: (details) {
          setState(() {
            isScrolling = false;
            widget.onPeek(
              lockedDown ? 1 : 0,
              lockedDown ? MediaQuery.of(context).size.height : 0,
            );

            if (!lockedDown) {
              position = Offset.zero;
            } else {
              widget.startStopwatch();
            }

            hasDir = false;
          });
        },
        child: Opacity(
          opacity: 1 -
              min(
                max(position.dy - 100, 0) / MediaQuery.of(context).size.height,
                1,
              ),
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage('https://picsum.photos/900/1600'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    gradient: AppColors.GRADIENT_BLACK,
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 48),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Wrap(
                        direction: Axis.horizontal,
                        spacing: 8,
                        children: widget.clothingSize
                            .map(
                              (size) => Container(
                                padding: EdgeInsets.symmetric(horizontal: 12),
                                decoration: BoxDecoration(
                                  color: Color(0xFF8BF8C4),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(4)),
                                ),
                                child: Text(
                                  size,
                                  style: Theme.of(context).textTheme.labelSmall,
                                ),
                              ),
                            )
                            .toList(),
                      ),
                      SizedBox(height: 4),
                      Text(
                        widget.clothingName,
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(
                              color: Colors.white,
                            ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        widget.sellerName,
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                              color: Colors.white,
                            ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
