import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';

class TextStyleFirth extends StatelessWidget {
  const TextStyleFirth(
      {super.key,
      required this.text,
      this.align = TextAlign.start,
      this.isColor});

  final String text;
  final TextAlign align;
  final bool? isColor;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: align,
      style: isColor==null? AppStyles.headLineStyle5.copyWith(color: Colors.white):AppStyles.headLineStyle5,
    );
  }
}
