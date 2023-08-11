import 'package:flutter/material.dart';

const font = "font";

fontstyle(
    {FontWeight? fw,
    String? family,
    double? size,
    Color? colors = Colors.white}) {
  return TextStyle(
    fontFamily: family,
    fontWeight: fw,
    fontSize: size,
    color: colors,
  );
}
