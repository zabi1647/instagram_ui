import 'package:flutter/material.dart';

import 'font.dart';

TextFormField textfield(
    {TextEditingController? controller,
    String? hint,
    Icon? icon,
    InkWell? button,
    bool? hide}) {
  return TextFormField(
    controller: controller,
    obscureText: hide ?? false,
    decoration: InputDecoration(
      isDense: true,
      filled: true,
      fillColor: Colors.white.withOpacity(0.5),
      hintText: hint,
      prefixIcon: icon,
      hintStyle: fontstyle(colors: Colors.white),
      suffixIcon: button,
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.transparent),
      ),
      disabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.transparent),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.blue.withOpacity(0.6),
        ),
      ),
    ),
  );
}
