import 'package:flutter/material.dart';

IconButton iconsButton({Icon? icon, Function()? ontap, Color? color}) {
  return IconButton(
    onPressed: ontap,
    icon: icon!,
    color: color,
  );
}
