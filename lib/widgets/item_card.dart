import 'package:flutter/material.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({
    Key? key,
    this.url = "https://picsum.photos/200",
    this.clothingName = "Name of Clothing",
    this.sellerName = "Name of Seller",
    this.size = "XL",
    this.duration = 72,
    this.durationProgress = 50,
    this.showDuration = false,
    this.color = const Color(0xFFE6F0EF),
  }) : super(key: key);

  final String url;
  final String clothingName;
  final String sellerName;
  final String size;
  final int duration;
  final int durationProgress;
  final bool showDuration;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 240,
      width: 160,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: NetworkImage(
            url,
          ),
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
              showDuration
                  ? SizedBox(
                      height: 40,
                      width: 40,
                      child: Stack(
                        children: [
                          Positioned.fill(
                            child: CircularProgressIndicator(
                              value: durationProgress / 100,
                              valueColor: const AlwaysStoppedAnimation<Color>(
                                  Color(0xFF4DDDA0)),
                            ),
                          ),
                          Center(
                            child: Text(
                              "$duration hrs",
                              style: Theme.of(context)
                                  .textTheme
                                  .labelSmall
                                  ?.copyWith(
                                    color: const Color(0xFF4DDDA0),
                                    letterSpacing: 0,
                                  ),
                            ),
                          ),
                        ],
                      ),
                    )
                  : Container(),
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
