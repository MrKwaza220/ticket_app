import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/media.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/res/widgtes/app_layout_widget.dart';
import 'package:ticket_app/base/res/widgtes/text_column_layout.dart';
import 'package:ticket_app/base/res/widgtes/ticket_view.dart';
import 'package:ticket_app/base/utils/all_json.dart';
import 'package:ticket_app/screens/search/widgets/app_ticket_tabs.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 20,
        ),
        children: [
          const SizedBox(
            height: 40,
          ),
          Text(
            "Tickets",
            style: AppStyles.headLineStyle1,
          ),
          const SizedBox(
            height: 20,
          ),
          const AppTicketTabs(
            firstTab: "Upcoming",
            secondTab: "Previous",
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
              padding: const EdgeInsets.only(left: 16),
              child: TicketView(
                ticket: ticketList[0],
                isColor: true,
              )),

          Container(
            margin: const EdgeInsets.symmetric(horizontal: 15),
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            color: AppStyles.ticketColor,
            child: Column(
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextColumnLayout(
                      topText: "Flutter DB",
                      bottomText: "Passenger",
                      alignment: CrossAxisAlignment.start,
                      isColor: true,
                    ),
                    TextColumnLayout(
                      topText: "54321 67890",
                      bottomText: "Passport",
                      alignment: CrossAxisAlignment.end,
                      isColor: true,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const AppLayoutWidget(randomDivider: 15, isColor: true),
                const SizedBox(
                  height: 20,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextColumnLayout(
                      topText: "2465 6584940",
                      bottomText: "Number of E-tickets",
                      alignment: CrossAxisAlignment.start,
                      isColor: true,
                    ),
                    TextColumnLayout(
                      topText: "B67890",
                      bottomText: "Booking Code",
                      alignment: CrossAxisAlignment.end,
                      isColor: true,
                    ),
                  ],
                ),
                 const SizedBox(
                  height: 20,
                ),
                const AppLayoutWidget(randomDivider: 15, isColor: true),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                     Column(
                      children: [
                        const Row(
                          children: [
                            Text("VISA", style: TextStyle(color: Colors.blue)),
                            //Image.asset(AppMedia.visaCard, scale: 11,),
                            Text("**** 4356")
                          ],
                        ),
                        Text("Payment Method", style: AppStyles.headLineStyle4,),
                      ],
                     ),
                    const TextColumnLayout(
                      topText: "\R259.00",
                      bottomText: "Price",
                      alignment: CrossAxisAlignment.end,
                      isColor: true,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
