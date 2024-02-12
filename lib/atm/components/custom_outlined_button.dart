import 'package:flutter/material.dart';

class CustomOutlinedButton extends StatelessWidget {
  const CustomOutlinedButton({
    Key? key,
    required this.text,
    required this.fontSize,
    required this.fontWeight,
    required this.height,
    required this.onPressed,
  }) : super(key: key);

  final String text;
  final double fontSize;
  final FontWeight fontWeight;
  final double height;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          side: const BorderSide(
            color: Color(0xFF218CEF),
          ),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: const Color(0xFF218CEF),
            fontSize: fontSize,
            fontWeight: fontWeight,
          ),
        ),
      ),
    );
  }
}
