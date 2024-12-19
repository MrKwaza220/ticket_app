import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';

class TextStyleThird extends StatelessWidget {
  const TextStyleThird({super.key, required this.text, this.isColor});

  final String text;
  final bool? isColor;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: isColor== null? AppStyles.headLineStyle3.copyWith(
        color: Colors.white):AppStyles.headLineStyle3,
    );
  }
}
