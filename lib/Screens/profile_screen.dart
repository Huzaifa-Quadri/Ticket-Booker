import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'package:ticket_booking/utils/theme_style.dart';
import 'package:ticket_booking/Screen_Widgets/counter_animation.dart';

import 'package:ticket_booking/Widgets/column_layout.dart';
import 'package:ticket_booking/Widgets/ring_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        children: [
          const Gap(40),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 86,
                width: 86,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/images/ticket.png"),
                    )),
              ),
              const Gap(20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Book Tickets",
                    style: AppStyles.headLineStyle1,
                  ),
                  Text(
                    "New-York",
                    style: AppStyles.headLineStyle4.copyWith(
                        fontWeight: FontWeight.w500,
                        color: Colors.grey.shade400),
                  ),
                  const Gap(8),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(3),
                          decoration: const BoxDecoration(
                            color: Colors.lightBlue,
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(
                            FluentIcons.shield_12_filled,
                            color: Colors.white,
                            size: 18,
                          ),
                        ),
                        const Gap(6),
                        const Text(
                          "Premium Status",
                          style: TextStyle(
                              color: Color(0xFF526799),
                              fontWeight: FontWeight.w600),
                        ),
                        const Gap(10)
                      ],
                    ),
                  )
                ],
              ),
              const Spacer(),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Gap(3),
                  InkWell(
                    onTap: () {
                      print("Profile Screen Inkwell tapped");
                    },
                    child: Text(
                      "Edit",
                      style: AppStyles.headLineStyle3.copyWith(
                          fontWeight: FontWeight.w500,
                          color: Colors.grey.shade400),
                    ),
                  )
                ],
              )
            ],
          ),
          const Gap(8),
          Divider(
            color: Colors.grey.shade300,
          ),
          Stack(
            children: [
              Container(
                height: 90,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppStyles.primaryColor,
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                ),
              ),
              const Positioned(
                top: -45,
                right: -45,
                child: SizedBox(
                    height: 105, child: Ring(color: Color(0xFF264CD2))),
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                child: Row(
                  children: [
                    CircleAvatar(
                      maxRadius: 25,
                      backgroundColor: Colors.white,
                      child: Icon(
                        FluentIcons.lightbulb_filament_20_filled,
                        size: 30,
                        color: Colors.blue.shade900,
                      ),
                    ),
                    const Gap(20),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("You've Got a new Reward",
                            style: AppStyles.headLineStyle2.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.bold)),
                        Text("You have 95 flights in a year",
                            style: AppStyles.headLineStyle3.copyWith(
                                color: Colors.white.withOpacity(0.9),
                                fontWeight: FontWeight.bold)),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
          const Gap(25),
          Text(
            "Accumulated Miles",
            style: AppStyles.headLineStyle2,
          ),
          const Gap(15),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Column(
              children: [
                //! Counter Starts here
                const CounterAnimationScreen(endValue: 192802, delayTime: 2),
                const Gap(25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Miles accured",
                      style: AppStyles.headLineStyle4.copyWith(fontSize: 16),
                    ),
                    Text(
                      "26 Aug 2024",
                      style: AppStyles.headLineStyle4.copyWith(fontSize: 16),
                    ),
                  ],
                ),
                const Gap(15),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnLayout(
                        textLine1: "23042",
                        textLine2: "Miles",
                        mycrossAxisAlignment: CrossAxisAlignment.start),
                    AppColumnLayout(
                        textLine1: "Airline CO",
                        textLine2: "Recieved from",
                        mycrossAxisAlignment: CrossAxisAlignment.end),
                  ],
                ),
                const Gap(15),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnLayout(
                        textLine1: "24",
                        textLine2: "Miles",
                        mycrossAxisAlignment: CrossAxisAlignment.start),
                    AppColumnLayout(
                        textLine1: "McDonal's",
                        textLine2: "Recieved from",
                        mycrossAxisAlignment: CrossAxisAlignment.end),
                  ],
                ),
                const Gap(15),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnLayout(
                        textLine1: "52340",
                        textLine2: "Miles",
                        mycrossAxisAlignment: CrossAxisAlignment.start),
                    AppColumnLayout(
                        textLine1: "Exuma",
                        textLine2: "Recieved from",
                        mycrossAxisAlignment: CrossAxisAlignment.end),
                  ],
                ),
              ],
            ),
          ),
          const Gap(25),
          Center(
              child: InkWell(
            onTap: () {
              print("more Miles account screen inkwell pressed");
            },
            child: Text(
              "How to get more miles",
              style: AppStyles.headLineStyle3
                  .copyWith(color: AppStyles.primaryColor),
            ),
          ))
        ],
      ),
    );
  }
}
