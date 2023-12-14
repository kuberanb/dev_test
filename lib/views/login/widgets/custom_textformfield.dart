import 'package:dev_test/core/colors.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  String hintText;
  TextEditingController controller;
  double width;
  bool isObscure;
  IconData? prefixIcon;
  TextInputType keyboardType;
  bool readOnly;
  int minLines;
  int maxLines;
  VoidCallback onClickFunction;
  bool isLeadingPresent;
  bool obscureText;
  double? inputHeight;
  CustomTextFormField({
    super.key,
    required this.hintText,
    required this.controller,
    required this.width,
    required this.isObscure,
    this.prefixIcon,
    this.readOnly = false,
    this.keyboardType = TextInputType.name,
    this.minLines = 1,
    this.isLeadingPresent = true,
    this.maxLines = 1,
    required this.onClickFunction,
    this.obscureText = false,
    this.inputHeight,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.grey[200], // Fill color (light grey)
            borderRadius: BorderRadius.circular(
                10.0), // Circular border of 10 for all sides
            border: Border.all(color: Colors.grey), // Border color (grey)
          ),
          height: inputHeight,
          width: width,
          child: TextFormField(
            keyboardType: keyboardType,
            onTap: onClickFunction,
            readOnly: readOnly,
            obscureText: obscureText,
            controller: controller,
            decoration: InputDecoration(
              hintText: hintText,
              contentPadding: const EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 10,
              ),
              floatingLabelBehavior: FloatingLabelBehavior.always,
              prefixIcon: prefixIcon != null
                  ? Icon(
                      prefixIcon,
                      // Adjust icon color here
                      color: Colors.grey,
                      size: 22,
                    )
                  : null,
              hintStyle: const TextStyle(
                color: Colors.grey,
                fontSize: 14,
              ),
              // Remove borders defined in InputDecoration
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
              errorBorder: InputBorder.none,
            ),
          ),
        ),
      ],
    );
  }
}
