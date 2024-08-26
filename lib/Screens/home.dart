import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'package:ticket_booking/Screen_Widgets/hotel_view.dart';
import 'package:ticket_booking/Screen_Widgets/ticket_view.dart';
import 'package:ticket_booking/utils/app_info_list.dart';

import '../utils/theme_style.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
                const Gap(45),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Good Morning",
                            style: AppStyles.headLineStyle3
                                .copyWith(color: Colors.grey.shade500)),
                        const Gap(5),
                        Text("Book Tickets", style: AppStyles.headLineStyle1.copyWith(fontSize: 30)),
                      ],
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/images/ticket.png"),
                          )),
                    )
                  ],
                ),
                const Gap(10),
                Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFFF4F6FD),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  child: Row(
                    children: [
                      const Icon(
                        FluentIcons.search_12_regular,
                        color: Color(0xFFBFC205),
                      ),
                      const Gap(10),
                      Text('Search', style: AppStyles.headLineStyle4)
                    ],
                  ),
                ),
                const Gap(20),
                Row(
                  children: [
                    Text(
                      'Upcoming Flights ',
                      style: AppStyles.headLineStyle2,
                    ),
                    const Spacer(),
                    InkWell(
                      onTap: () {
                        print("Inkwell pressed");
                      },
                      child: Text(
                        'View all ',
                        style: AppStyles.textStyle
                            .copyWith(color: AppStyles.primaryColor),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const Gap(12),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            // padding: EdgeInsets.only(right: 20),
            child: Row(
                children: ticketList
                    .map((singleTicket) => TicketView(tickets: singleTicket))
                    .toList()),
          ),
          const Gap(15), 
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: [
                Text(
                  'Upcoming Flights ',
                  style: AppStyles.headLineStyle2,
                ),
                const Spacer(),
                InkWell(
                  onTap: () {
                    print("home screen Edit Inkwell pressed");
                  },
                  child: Text(
                    'View all ',
                    style: AppStyles.textStyle
                        .copyWith(color: AppStyles.primaryColor),
                  ),
                ),
              ],
            ),
          ),
          const Gap(12),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: hotelList
                  .map((singleHotel) => HotelViewScreen(hotels: singleHotel))
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}
