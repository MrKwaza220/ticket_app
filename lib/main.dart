import 'package:flutter/material.dart';
import 'package:ticket_app/base/bottom_nav__bar.dart';
import 'package:ticket_app/base/res/widgtes/app_routes.dart';
import 'package:ticket_app/base/res/widgtes/ticket_view.dart';
import 'package:ticket_app/screens/home/all_ticket.dart';
import 'package:ticket_app/screens/ticket/ticket_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        AppRoutes.homePage: (context) => const BottomNavBar(),
        AppRoutes.allTickets: (context) => const AllTicket(),
        AppRoutes.ticketScreen: (context) => const TicketScreen(),
      },
    );
  }
}
