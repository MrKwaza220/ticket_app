import 'package:flutter/material.dart';

class AppLayoutWidget extends StatelessWidget {
  const AppLayoutWidget({super.key, required this.randomDivider, this.width=3});

  final int randomDivider;
  final double width;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      //print("${(constraints.constrainWidth()/randomDivider).floor()}");
      return Flex(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          direction: Axis.horizontal,
          children: List.generate(
            (constraints.constrainWidth() / randomDivider).floor(),
            (index) => const SizedBox(
                width: 3,
                height: 1,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                )),
          ));
    });
  }
}
