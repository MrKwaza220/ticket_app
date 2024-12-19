import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';

class TextStyleFirth extends StatelessWidget {
  const TextStyleFirth({super.key, required this.text, this.align = TextAlign.start, bool? isColor});

  final String text;
  final TextAlign align;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: align,
      style: AppStyles.headLineStyle5.copyWith(color: Colors.white),
    );
  }
}
