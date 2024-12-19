import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/res/widgtes/app_layout_widget.dart';
import 'package:ticket_app/base/res/widgtes/big_circle.dart';
import 'package:ticket_app/base/res/widgtes/big_dot.dart';
import 'package:ticket_app/base/res/widgtes/text_column_layout.dart';
import 'package:ticket_app/base/res/widgtes/text_style_fourth.dart';
import 'package:ticket_app/base/res/widgtes/text_style_third.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool wholeScreen;
  final bool? isColor;
  const TicketView(
      {super.key,
      required this.ticket,
      this.wholeScreen = false,
      this.isColor});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SizedBox(
        width: size.width * 0.85,
        height: 165,
        child: Container(
          margin: EdgeInsets.only(right: wholeScreen == true ? 0 : 16),
          child: Column(
            children: [
              // Blue part of the ticket
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                    color: isColor == null
                        ? AppStyles.ticketBlue
                        : AppStyles.ticketColor,
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(21),
                        topRight: Radius.circular(21))),
                child: Column(
                  children: [
                    //Departure with Icons
                    Row(
                      children: [
                        TextStyleThird(
                          text: ticket["from"]["code"],
                          isColor: isColor,
                        ),
                        Expanded(child: Container()),
                        BigDot(
                          isColor: isColor,
                        ),
                        Expanded(
                            child: Stack(
                          children: [
                            const SizedBox(
                              height: 24,
                              child: AppLayoutWidget(
                                randomDivider: 6,
                              ),
                            ),
                            Center(
                              child: Transform.rotate(
                                  angle: 1.5,
                                  child: Icon(
                                    Icons.local_airport_rounded,
                                    color: isColor == null
                                        ? Colors.white
                                        : AppStyles.planeSecondColor,
                                  )),
                            )
                          ],
                        )),
                        BigDot(
                          isColor: isColor,
                        ),
                        Expanded(child: Container()),
                        TextStyleThird(
                          text: ticket["to"]["code"],
                          isColor: isColor,
                        ),
                      ],
                    ),
                    //Departure with names and times
                    const SizedBox(
                      height: 3,
                    ),
                    Row(
                      children: [
                        TextStyleFourth(
                          text: ticket["from"]["name"],
                          isColor: isColor,
                        ),
                        Expanded(child: Container()),
                        TextStyleFourth(
                          text: ticket["flying_time"],
                          isColor: isColor,
                        ),
                        Expanded(child: Container()),
                        TextStyleFourth(
                          text: ticket["to"]["name"],
                          isColor: isColor,
                        ),
                      ],
                    )
                  ],
                ),
              ),
              //circles and dot
              Container(
                color: isColor == null
                    ? AppStyles.ticketOrange
                    : AppStyles.ticketColor,
                child: Row(
                  children: [
                    BigCircle(
                      isRight: false,
                      isColor: isColor,
                    ),
                    Expanded(
                        child: AppLayoutWidget(
                      randomDivider: 20,
                      width: 8,
                      isColor: isColor,
                    )),
                    BigCircle(
                      isRight: true,
                      isColor: isColor,
                    )
                  ],
                ),
              ),
              //Orange
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                    color: isColor == null
                        ? AppStyles.ticketOrange
                        : AppStyles.ticketColor,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(isColor == null ? 21 : 0),
                        bottomRight:
                            Radius.circular(isColor == null ? 21 : 0))),
                child: Column(
                  children: [
                    //Departure with Icons
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextColumnLayout(
                          topText: ticket["date"],
                          bottomText: "Date",
                          alignment: CrossAxisAlignment.start,
                          isColor: isColor,
                        ),
                        TextColumnLayout(
                          topText: ticket["departure_time"],
                          bottomText: "Departure",
                          alignment: CrossAxisAlignment.center,
                          isColor: isColor,
                        ),
                        TextColumnLayout(
                          topText: ticket["number"].toString(),
                          bottomText: "Number",
                          alignment: CrossAxisAlignment.end,
                          isColor: isColor,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
