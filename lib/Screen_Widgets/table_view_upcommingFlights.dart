import 'package:flutter/material.dart';

import 'package:gap/gap.dart';
import 'package:ticket_booking/Widgets/ring_widget.dart';
import 'package:ticket_booking/utils/app_layout.dart';
import 'package:ticket_booking/utils/theme_style.dart';

class TableViewUpcommingflights extends StatelessWidget {
  const TableViewUpcommingflights({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
      //! Container 1
      decoration: const BoxDecoration(
        // color: AppStyles.bgColor,
        color: Colors.transparent,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10),
            topRight: Radius.circular(10)),
      ),
      // height: 300,  //* keeping bounded the length for all other widgets inside
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //? From here he explains -----------------------------------------------
        children: [
          Container(
            //! COntainer 2
            height: 400,
            width: size.width * 0.42,
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
              boxShadow: [
                BoxShadow(color: Colors.grey, blurRadius: 1, spreadRadius: 1),
              ],
            ),
            child: Column(
              children: [
                Container(
                  height: 190, //todo Have to make it dynamic
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/images/airplane_interior.jpg"),
                      )),
                ), //! COntainer 3 - Image
                const Gap(12),
                Text(
                  "20% discount on early booking of this flight, Don't miss.",
                  style: AppStyles.headLineStyle2,
                )
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Stack(
                children: [
                  Container(
                    width: size.width * 0.44,
                    height: 200,
                    decoration: BoxDecoration(
                      color: const Color(0xFF3ABBBB),
                      borderRadius: BorderRadius.circular(18),
                    ),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Discount\nfor Survey",
                          style: AppStyles.headLineStyle2
                              .copyWith(color: Colors.white),
                        ),
                        const Gap(10),
                        Text(
                          "Take the survey about our services and get discount",
                          style: AppStyles.headLineStyle3
                              .copyWith(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  const Positioned(
                    top: -45,
                    right: -45,
                    child: Ring(),
                  ),
                ],
              ), //! COntainer 4
              const Gap(5),
              Container(
                width: size.width * 0.44,
                height: 180,
                decoration: BoxDecoration(
                  color: const Color(0xFFEC6545),
                  borderRadius: BorderRadius.circular(18),
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Enjoy Your Ride",
                      style: AppStyles.headLineStyle2
                          .copyWith(color: Colors.white),
                    ),
                    const Gap(5),
                    RichText(
                      text: const TextSpan(children: [
                        TextSpan(text: '🥰', style: TextStyle(fontSize: 38)),
                        TextSpan(text: '✈️', style: TextStyle(fontSize: 38)),
                        TextSpan(text: '😌', style: TextStyle(fontSize: 38)),
                      ]),
                    )
                  ],
                ),
              ), //! COntainer 5
            ],
          )
        ],
      ),
    );
  }
}
