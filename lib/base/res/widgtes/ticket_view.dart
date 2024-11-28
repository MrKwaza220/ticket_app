import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/res/widgtes/app_layout_widget.dart';
import 'package:ticket_app/base/res/widgtes/big_circle.dart';
import 'package:ticket_app/base/res/widgtes/big_dot.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SizedBox(
        width: size.width * 0.85,
        height: 179,
        child: Container(
          margin: const EdgeInsets.only(right: 16),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                    color: AppStyles.ticketBlue,
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(21), topRight: Radius.circular(21))),
                child: Column(
                  children: [
                    //Departure with Icons
                    Row(
                      children: [
                        Text(
                          "CPT",
                          style:
                              AppStyles.headLineStyle3.copyWith(color: Colors.white),
                        ),
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
                        Text(
                          "GP",
                          style:
                              AppStyles.headLineStyle3.copyWith(color: Colors.white),
                        ),
                      ],
                    ),
                    //Departure with names and times
                    const SizedBox(height: 3,),
                    Row(
                      children: [
                        Text(
                          "Cape Town",
                          style:
                              AppStyles.headLineStyle3.copyWith(color: Colors.white),
                        ),
                        Expanded(child: Container()),
                        Text(
                          "08:00am",
                          style:
                              AppStyles.headLineStyle3.copyWith(color: Colors.white),
                          ),                  
                        Expanded(child: Container()),
                        Text(
                          "Gauteng",
                          style:
                              AppStyles.headLineStyle3.copyWith(color: Colors.white),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                
                color: AppStyles.ticketOrange,
                child: Row(
                  children: [ 
                    const BigCircle(isRight: false,),
                    Expanded(child: Container()),
                    const BigCircle(isRight: true,)
                  ],
                ),
              ),

              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                    color: AppStyles.ticketOrange,
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(21), bottomRight: Radius.circular(21))),
                child: Column(
                  children: [
                    //Departure with Icons
                    Row(
                      children: [
                        Text(
                          "CPT",
                          style:
                              AppStyles.headLineStyle3.copyWith(color: Colors.white),
                        ),
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
                        Text(
                          "GP",
                          style:
                              AppStyles.headLineStyle3.copyWith(color: Colors.white),
                        ),
                      ],
                    ),
                    //Departure with names and times
                    const SizedBox(height: 3,),
                    Row(
                      children: [
                        Text(
                          "Cape Town",
                          style:
                              AppStyles.headLineStyle3.copyWith(color: Colors.white),
                        ),
                        Expanded(child: Container()),
                        Text(
                          "08:00am",
                          style:
                              AppStyles.headLineStyle3.copyWith(color: Colors.white),
                          ),                  
                        Expanded(child: Container()),
                        Text(
                          "Gauteng",
                          style:
                              AppStyles.headLineStyle3.copyWith(color: Colors.white),
                        ),
                      ],
                    )

                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
