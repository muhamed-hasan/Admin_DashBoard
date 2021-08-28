import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String? text;
  final double? size;
  final Color? color;
  final FontWeight? weight;

  const CustomText({Key? key, this.text, this.size, this.color, this.weight})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(
      text ?? 'text',
      style: TextStyle(
          color: color ?? Colors.black,
          fontSize: size ?? 16,
          fontWeight: weight ?? FontWeight.normal),
    );
  }
}
