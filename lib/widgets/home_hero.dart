import 'package:flutter/material.dart';

class HomeHero extends StatelessWidget {
  const HomeHero({
    Key? key,
    this.header = "WHAT’S ON \n THE RACK?",
    this.subheader = "Here are your ukay finds with \n ongoing bidding",
    this.color = const Color(0xFFE8FFEF),
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
              style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                    color: Color(0xFF197D4B),
                    height: 0.875,
                  ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 24,
            ),
            Text(
              subheader,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: Color(0xFF197D4B),
                  ),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
