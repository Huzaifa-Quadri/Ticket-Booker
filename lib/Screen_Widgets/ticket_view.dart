import 'package:flutter/material.dart';

import 'package:ticket_booking/utils/theme_style.dart';
import 'package:ticket_booking/Widgets/flight_route_icon.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key, required this.tickets});

  final Map<String, dynamic> tickets;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SizedBox(
      //! Whole Page Space
      height: 200,
      width: size.width * 0.85,
      child: Container(
        //! Ticket Card Start
        // color: Colors.green,

        margin: const EdgeInsets.only(left: 15, right: 15),
        child: Column(
          //! Formating different color sections inside column as containers
          children: [
            Container(
              decoration: const BoxDecoration(
                color: Colors.blue, //! Red Color Column Container Section
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
              ),
              padding: const EdgeInsets.all(16),
              child: Column(
                //! Contents indide Red Section as vertical columns
                children: [
                  Row(
                    //! Multiple elements in each column as vertical rows
                    children: [
                      Text(
                        tickets['from']['code'],
                        style: AppStyles.headLineStyle3
                            .copyWith(color: Colors.white),
                      ),
                      const Expanded(
                        child: FlightRouteWidget(),
                      ),
                      Text(
                        tickets['to']['code'],
                        style: AppStyles.headLineStyle3
                            .copyWith(color: Colors.white),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        tickets['from']['code'],
                        style: AppStyles.headLineStyle4
                            .copyWith(color: Colors.white),
                      ),
                      Text(
                        tickets['flying_time'],
                        style: AppStyles.headLineStyle4
                            .copyWith(color: Colors.white),
                      ),
                      Text(
                        tickets['to']['name'],
                        style: AppStyles.headLineStyle4
                            .copyWith(color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            //! Red part of Ticket Starting here
            Container(
              color: AppStyles.orangeColor, //? Dotted Line Color
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
                    child: LayoutBuilder(
                      builder: (context, constraints) {
                        final width = constraints.maxWidth;

                        return Flex(
                          direction: Axis.horizontal,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.max,
                          children: List.generate(
                            (width / 12).floor(),
                            (index) => const Text("-"),
                          ),
                        );
                      },
                    ),
                  )),
                  const SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          color: Colors.white,
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
                color: AppStyles
                    .orangeColor, //! Red Color Column Container Section
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        tickets['date'],
                        style: AppStyles.headLineStyle3
                            .copyWith(color: Colors.white),
                      ),
                      Text(
                        "Date",
                        style: AppStyles.headLineStyle4
                            .copyWith(color: Colors.white),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        tickets['departure_time'],
                        style: AppStyles.headLineStyle3
                            .copyWith(color: Colors.white),
                      ),
                      Text(
                        "Departure time",
                        style: AppStyles.headLineStyle4
                            .copyWith(color: Colors.white),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        tickets['number'].toString(),
                        style: AppStyles.headLineStyle3
                            .copyWith(color: Colors.white),
                      ),
                      Text(
                        "Number",
                        style: AppStyles.headLineStyle4
                            .copyWith(color: Colors.white),
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
