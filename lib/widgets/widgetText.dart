import 'package:flutter/material.dart';

Widget widgetText(String title,
    {double fontSize = 14,
    Color? color,
    FontWeight fontWeight = FontWeight.w400}) {
  return Text(title,
      style: TextStyle(
          fontSize: fontSize,
          color: color ?? Colors.white,
          fontWeight: fontWeight));
}
