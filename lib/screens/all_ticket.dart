import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/widgtes/ticket_view.dart';
import 'package:ticket_app/base/utils/all_json.dart';

class AllTicket extends StatelessWidget {
  const AllTicket({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("All Tickets")),
      ),
      body: ListView(
        children: [
          SingleChildScrollView(
            child: Column(
              children: 
              ticketList.map((singleTicket) => 
              TicketView(ticket: singleTicket)).toList(),
            ),
          )
        ],
      )
    );
  }
}