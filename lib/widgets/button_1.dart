import 'package:flutter/material.dart';
import 'package:zeely/data/const.dart';

class Button1 extends StatelessWidget {
  final String text;

  final bool active;
  final double hght;

  Button1(
      {Key? key, required this.text, required this.active, required this.hght});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16),
      height: hght,
      child: Center(child: Text(text, style: styleButton)),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: active ? color_green_1 : color_gray_1,
      ),
      width: double.infinity,
    );
  }
}
