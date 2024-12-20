import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/widgtes/app_routes.dart';
import 'package:ticket_app/base/res/widgtes/ticket_view.dart';
import 'package:ticket_app/base/utils/all_json.dart';

class AllTicket extends StatelessWidget {
  const AllTicket({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("All Tickets"),
        ),
        body: ListView(
          children: [
            SingleChildScrollView(
              child: Column(
                children: ticketList
                    .map((singleTicket) => GestureDetector(
                          onTap: () {
                            var index = ticketList.indexOf(singleTicket);
                            Navigator.pushNamed(context, AppRoutes.ticketScreen,
                                arguments: {"index": index});
                          },
                          child: Container(
                              margin: const EdgeInsets.only(bottom: 20),
                              child: TicketView(
                                ticket: singleTicket,
                                wholeScreen: true,
                              )),
                        ))
                    .toList(),
              ),
            )
          ],
        ));
  }
}
