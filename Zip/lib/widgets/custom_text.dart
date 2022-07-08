import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final double? size;
  final Color? color;
  final FontWeight? weight;
  final double? letterSpacing;

  const CustomText(
      {Key? key,
      required this.text,
      this.size,
      this.color,
      this.weight,
      this.letterSpacing})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: size ?? 14,
        color: color ?? Colors.black,
        fontWeight: weight ?? FontWeight.normal,
        letterSpacing: letterSpacing ?? 0,
      ),
    );
  }
}
