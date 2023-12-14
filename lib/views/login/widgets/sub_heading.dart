import 'package:flutter/material.dart';

class SubHeading extends StatelessWidget {
  String subHeadingText;
  SubHeading({super.key, required this.subHeadingText});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          width: .1 * screenWidth,
        ),
        Text(
          // "Enter UserName"
          subHeadingText,
          style: const TextStyle(fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
