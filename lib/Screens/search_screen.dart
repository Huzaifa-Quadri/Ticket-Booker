import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
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
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: const Color(0xFFF4F6FD),
            ),
            // color: Colors.red),
            child: Container(
              padding: const EdgeInsets.all(3.5),
              child: Row(
                children: [
                  //!------- Airline Tickets -----------------------------------------
                  Container(
                    width: size.width * 0.44,
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.horizontal(left: Radius.circular(50)),
                    ),
                    child: const Center(child: Text("Airline Tickets")),
                  ),

                  //!------- Hotels ---------------------------------------------------
                  Expanded(
                    child: Container(
                      width: size.width * 0.44,
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      decoration: BoxDecoration(
                        color: Colors.grey[50],
                        borderRadius: const BorderRadius.horizontal(
                            right: Radius.circular(50)),
                      ),
                      child: const Center(child: Text("Hotels")),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Gap(40),
  
          const IconText(
              icon: Icons.flight_takeoff,
              icontext: 'Departure',
              isIconOn: true,
              color: Colors.white),
          const Gap(15),
          const IconText(
              icon: Icons.flight_land,
              icontext: 'Departure',
              isIconOn: true,
              color: Colors.white),
          const Gap(15),
          const IconText(
              icon: Icons.add_ic_call,
              icontext: 'Find Tickets',
              isIconOn: false,
              color: Color(0xD91130CE)),
          const Gap(20),
          //Tobe made external widget
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
          const TableViewUpcommingflights(),
        ],
      ),
    );
  }
}
