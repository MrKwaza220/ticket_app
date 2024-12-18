import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/res/widgtes/app_double_text.dart';
import 'package:ticket_app/screens/search/widgets/app_text_icon.dart';
import 'package:ticket_app/screens/search/widgets/app_ticket_tabs.dart';
import 'package:ticket_app/screens/search/widgets/find_tickets.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          const SizedBox(height: 40,),
          Text("What are\n you looking for?", 
          style: AppStyles.headLineStyle1.copyWith(fontSize: 35),
          
          ),
          const SizedBox(height: 20,),
          const AppTicketTabs(),
          const SizedBox(height: 15,),
          const AppTextIcon(icon: Icons.flight_takeoff_rounded, text: "Departure"),
          const SizedBox(height: 20,),
          const AppTextIcon(icon: Icons.flight_land_rounded, text: "Arrival"),
          const SizedBox(height: 20,),
          const FindTickets(),
          const SizedBox(height: 20,),
          const AppDoubleText(bigText: 'Upcoming Flights', smallText: 'View all',),
          const SizedBox(height: 15,),
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                child: Text("Text"),

              )
          ],)
        ],
      ),
    );
  }
}