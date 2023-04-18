import 'package:flutter/material.dart';

// simple button with rounded edges
class SmallButton extends StatelessWidget {
  const SmallButton({Key? key, required this.text
      // required this.onPressed,
      })
      : super(key: key);

  final String text;
  // final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    // return ElevatedButton(
    //   style: ElevatedButton.styleFrom(
    //     backgroundColor: Colors.blue,
    //     shape: RoundedRectangleBorder(
    //       borderRadius: BorderRadius.circular(50),
    //     ),
    //   ),
    //   onPressed: () {},
    //   child: Text(
    //     text,
    //     style: const TextStyle(
    //       color: Colors.white,
    //       fontSize: 16,
    //     ),
    //   ),
    // );
    return InkWell(
      onTap: () {},
      // customBorder: RoundedRectangleBorder(
      //   borderRadius: BorderRadius.circular(100),
      // ),
      child: Container(
        child: Text(text),
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(100),
        ),
        padding: EdgeInsets.symmetric(
          horizontal: 24,
          vertical: 8,
        ),
      ),
    );
  }
}
