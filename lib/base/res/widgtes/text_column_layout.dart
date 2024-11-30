import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/widgtes/text_style_firth.dart';

class TextColumnLayout extends StatelessWidget {
  const TextColumnLayout(
      {super.key, required this.topText, 
      required this.bottomText, required this.alignment});

  final String topText;
  final String bottomText;
  final CrossAxisAlignment alignment;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment,
      children: [
        TextStyleFirth(text: topText),
        TextStyleFirth(text: bottomText),
      ],
    );
  }
}
