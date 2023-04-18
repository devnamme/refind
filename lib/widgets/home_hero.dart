import 'package:flutter/material.dart';

class HomeHero extends StatelessWidget {
  const HomeHero({
    Key? key,
    this.header = "WHAT’S ON THE RACK?",
    this.subheader = "Here are your ukay finds with ongoing bidding",
    this.color = const Color(0xFF28B5DF),
  }) : super(key: key);

  final String header;
  final String subheader;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      decoration: BoxDecoration(
        color: color,
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              header,
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            Text(
              subheader,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
      ),
    );
  }
}
