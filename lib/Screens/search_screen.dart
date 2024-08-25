import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking/Screen_Widgets/ticket_tabs.dart';
import 'package:ticket_booking/Widgets/icon_data.dart';

import 'package:ticket_booking/Screen_Widgets/table_view_upcommingFlights.dart';
import 'package:ticket_booking/utils/app_layout.dart';
import 'package:ticket_booking/utils/theme_style.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);

    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: ListView(
        padding: const EdgeInsets.only(left: 20, right: 20),
        children: [
          const Gap(40),
          Text(
            "What are \nyou looking for ?",
            style: AppStyles.headLineStyle1.copyWith(fontSize: 35),
          ),
          const Gap(20),
          const TicketTabs(tab1: 'Airline Tickets', tab2: 'Hotel'),
          const Gap(40),

          const IconText(
              icon: Icons.flight_takeoff,
              icontext: 'Departure',
              isIconOn: true,
              color: Colors.white),
          const Gap(15),
          const IconText(
              icon: Icons.flight_land,
              icontext: 'Arrival',
              isIconOn: true,
              color: Colors.white),
          const Gap(15),
          const IconText(
              icon: Icons.add_ic_call,
              icontext: 'Find Tickets',
              isIconOn: false,
              color: Color(0xD91130CE)),
          const Gap(20),
          //Todo To be made external widget
          //*********
          Row(
            children: [
              Text(
                'Upcoming Flights ',
                style: AppStyles.headLineStyle2,
              ),
              const Spacer(),
              InkWell(
                onTap: () {
                  print("Inkwell pressed_Search Screen");
                },
                child: Text(
                  'View all ',
                  style: AppStyles.textStyle
                      .copyWith(color: AppStyles.primaryColor),
                ),
              ),
            ],
            //********
          ),
          const Gap(15),
          const TableViewUpcommingflights(),
        ],
      ),
    );
  }
}
