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
  const TicketView({super.key, required this.ticket, this.wholeScreen=false});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SizedBox(
        width: size.width * 0.85,
        height: 200,
        child: Container(
          margin: EdgeInsets.only(right: wholeScreen==true?0:16),
          child: Column(
            children: [
              // Blue part of the ticket
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                    color: AppStyles.ticketBlue,
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(21),
                        topRight: Radius.circular(21))),
                child: Column(
                  children: [
                    //Departure with Icons
                    Row(
                      children: [
                        TextStyleThird(text: ticket["from"]["code"]),
                        Expanded(child: Container()),
                        const BigDot(),
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
                                  child: const Icon(
                                    Icons.local_airport_rounded,
                                    color: Colors.white,
                                  )),
                            )
                          ],
                        )),
                        const BigDot(),
                        Expanded(child: Container()),
                        TextStyleThird(text: ticket["to"]["code"]),
                      ],
                    ),
                    //Departure with names and times
                    const SizedBox(
                      height: 3,
                    ),
                    Row(
                      children: [
                        TextStyleFourth(text: ticket["from"]["name"]),
                        Expanded(child: Container()),
                        TextStyleFourth(text: ticket["flying_time"]),
                        Expanded(child: Container()),
                        TextStyleFourth(text: ticket["to"]["name"]),
                      ],
                    )
                  ],
                ),
              ),
              //circles and dot
              Container(
                color: AppStyles.ticketOrange,
                child: const Row(
                  children: [
                    BigCircle(
                      isRight: false,
                    ),
                    Expanded(
                        child: AppLayoutWidget(randomDivider: 20, width: 8)),
                    BigCircle(
                      isRight: true,
                    )
                  ],
                ),
              ),
              //Orange
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                    color: AppStyles.ticketOrange,
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(21),
                        bottomRight: Radius.circular(21))),
                child: Column(
                  children: [
                    //Departure with Icons
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextColumnLayout(
                            topText: ticket["date"],
                            bottomText: "Date",
                            alignment: CrossAxisAlignment.start),
                        TextColumnLayout(
                            topText: ticket["departure_time"],
                            bottomText: "Departure",
                            alignment: CrossAxisAlignment.center),
                        TextColumnLayout(
                            topText: ticket["number"].toString(),
                            bottomText: "Number",
                            alignment: CrossAxisAlignment.end),
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
