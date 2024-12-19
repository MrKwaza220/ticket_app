import 'package:flutter/material.dart';

class BigCircle extends StatelessWidget {
  const BigCircle({super.key, required this.isRight, this.isColor});

  final bool isRight;
  final bool? isColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 13,
      width: 6.5,
      child: DecoratedBox(
          decoration: BoxDecoration(
              color: isColor == null? Colors.white:Colors.grey.shade200,
              borderRadius: isRight == true
                  ? const BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                    )
                  : const BorderRadius.only(
                      topRight: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ))),
    );
  }
}
