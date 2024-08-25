import 'package:flutter/material.dart';
import 'package:ticket_booking/Widgets/Dashes_line_widget.dart';
import 'package:ticket_booking/utils/app_layout.dart';

import 'package:ticket_booking/utils/theme_style.dart';
import 'package:ticket_booking/Widgets/flight_route_icon.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key, required this.tickets, this.color});

  final Map<String, dynamic> tickets;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SizedBox(
      //! Whole Page Space
      // height: AppLayout.getHeight(200),
      height: 170,
      width: size.width * 0.85,
      child: Container(
        //! Ticket Card Start
        // color: Colors.green,

        margin: const EdgeInsets.only(left: 15, right: 15),
        child: Column(
          //! Formating different color sections inside column as containers
          children: [
            Container(
              decoration: BoxDecoration(
                color: color ?? Colors.blue, //! Blue Color Column Container Section
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
              ),
              padding: const EdgeInsets.all(16),
              child: Column(
                //! Contents indide Blue Section as vertical columns
                children: [
                  Row(
                    //! Multiple elements in each column as vertical rows
                    children: [
                      Text(
                        tickets['from']['code'],
                        style: AppStyles.headLineStyle3.copyWith(
                            color: color == null ? Colors.white : Colors.black),
                      ),
                      Expanded(
                        child: color == null
                            ? const FlightRouteWidget()
                            : const FlightRouteWidget(
                                color: Colors.blue,
                              ),
                      ),
                      Text(
                        tickets['to']['code'],
                        style: AppStyles.headLineStyle3.copyWith(
                            color: color == null ? Colors.white : Colors.black),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        tickets['from']['name'],
                        style: color == null
                            ? AppStyles.headLineStyle4.copyWith(color: Colors.white)
                            : AppStyles.headLineStyle4.copyWith(color: Colors.grey.shade500),
                      ),
                      Text(
                        tickets['flying_time'],
                        style: color == null
                            ? AppStyles.headLineStyle4.copyWith(color: Colors.white)
                            : AppStyles.headLineStyle4.copyWith(color: Colors.grey.shade500),
                      ),
                      Text(
                        tickets['to']['name'],
                        style: color == null
                            ? AppStyles.headLineStyle4.copyWith(color: Colors.white)
                            : AppStyles.headLineStyle4.copyWith(color: Colors.grey.shade500),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            //! Red part of Ticket Starting here
            Container(
              color: color ?? AppStyles.orangeColor,
              child: Row(
                children: [
                  const SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                          )),
                    ),
                  ),
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: color == null ? const DashedlineSeperatorWidget(sections: 12) : DashedlineSeperatorWidget(sections: 12, color: Colors.grey.shade600,)
                    
                  )),
                  const SizedBox(
                    //? For semicircles on left mid and right mid of card (invisible in white bg)
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          color: Colors.white, //? To be left unchanged for now
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                          )),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(
                  top: 10, bottom: 16, right: 16, left: 16),
              // height: 50,
              decoration: BoxDecoration(
                color: color ??
                    AppStyles
                        .orangeColor, //! Red Color Column Container Section
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(color == null ? 15 : 0),
                  bottomRight: Radius.circular(color == null ? 15 : 0),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        tickets['date'],
                        style: AppStyles.headLineStyle3.copyWith(
                            color: color == null ? Colors.white : Colors.black),
                      ),
                      Text(
                        "Date",
                        style: color == null
                            ? AppStyles.headLineStyle4
                                .copyWith(color: Colors.white)
                            : AppStyles.headLineStyle4
                                .copyWith(color: Colors.grey.shade500),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        tickets['departure_time'],
                        style: AppStyles.headLineStyle3.copyWith(
                            color: color == null ? Colors.white : Colors.black),
                      ),
                      Text(
                        "Departure time",
                        style: color == null
                            ? AppStyles.headLineStyle4.copyWith(color: Colors.white)
                            : AppStyles.headLineStyle4.copyWith(color: Colors.grey.shade500),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        tickets['number'].toString(),
                        style: AppStyles.headLineStyle3.copyWith(
                            color: color == null ? Colors.white : Colors.black),
                      ),
                      Text(
                        "Number",
                        style: color == null
                            ? AppStyles.headLineStyle4.copyWith(color: Colors.white)
                            : AppStyles.headLineStyle4.copyWith(color: Colors.grey.shade400),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
