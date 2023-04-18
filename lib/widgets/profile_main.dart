import 'package:flutter/material.dart';

class ProfileMain extends StatelessWidget {
  const ProfileMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: 184,
            decoration: BoxDecoration(
              color: const Color(0xFF4DDDA0),
            ),
          )
        ],
      ),
    ));
  }
}
