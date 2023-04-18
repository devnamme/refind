import 'package:flutter/material.dart';

class FunFact extends StatelessWidget {
  const FunFact({
    Key? key,
    this.text = "This is a fun fact about ukay-ukay",
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 300,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: const Color(0xFF28B5DF),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style: const TextStyle(
                color: Colors.white,
              ),
            ),
          ],
        ));
  }
}
