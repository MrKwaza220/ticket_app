import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/media.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/res/widgtes/app_double_text.dart';
import 'package:ticket_app/base/res/widgtes/app_double_text_two.dart';
import 'package:ticket_app/base/res/widgtes/app_routes.dart';
import 'package:ticket_app/base/res/widgtes/ticket_view.dart';
import 'package:ticket_app/base/utils/all_json.dart';
import 'package:ticket_app/screens/home/widgets/hotel.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: ListView(
        children: [
          const SizedBox(height: 30,),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Good Morning",
                          style: AppStyles.headLineStyle3,
                        ),
                        const SizedBox( 
                          height: 5,
                        ),
                        Text("Book Ticket",
                            style: AppStyles.headLineStyle1)
                      ],
                    ),
                    Container(
                      width: 50,
                      height:50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                          image: AssetImage(
                            AppMedia.ticketLogo
                          )
                        )
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 25,),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal:12, vertical:12),
                  decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xfff4f6fd),
                      ),
                  child: const Row(
                    
                    children: [
                      Icon(FluentSystemIcons.ic_fluent_search_regular, color: Color(0xFFBFC205),),
                      Text("Search"),
                    ],
                  ),
                ),
                const SizedBox(height: 40,),
                AppDoubleText(bigText: 'Upcoming Flights', smallText: 'View all',
                func: (){
                  Navigator.pushNamed(context, AppRoutes.allTickets);
                }),
                const SizedBox(height: 15,),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: ticketList.take(3).map((singleTicket){
                      return TicketView(ticket:singleTicket,);
                    }).toList(),
                  )),

                const SizedBox(height: 20,),

                AppDoubleTextTwo(bigText: 'Hotels', smallText: 'View all',
                func: (){
                  Navigator.pushNamed(context, AppRoutes.allHotels);
                }),

                const SizedBox(height: 10,),

                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  
                  child: Row(
                    children: hotelList
                    .take(3)
                    .map((singleHotel){
                      return Hotel(
                        hotel:singleHotel,
                      );
                    }).toList(),
                  )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
