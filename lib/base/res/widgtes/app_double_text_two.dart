import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/res/widgtes/app_routes.dart';

class AppDoubleTextTwo extends StatelessWidget {
  const AppDoubleTextTwo(
      {super.key, required this.bigText, required this.smallText, required Null Function() func,});
  final String bigText;
  final String smallText;
  //final voidCalback func;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          bigText,
          style: AppStyles.headLineStyle3,
        ),
        InkWell(
          onTap: () {
            Navigator.pushNamed(context, AppRoutes.allHotels);
          },
          child: Text(
            smallText,
            style: AppStyles.textStyle.copyWith(color: AppStyles.primaryColor),
          ),
        )
      ],
    );
  }
}