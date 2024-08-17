import 'package:flutter/material.dart';

import 'package:ticket_booking/Widgets/circle_widget.dart';
import 'package:ticket_booking/utils/theme_style.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SizedBox(
      //! Whole Page Space
      height: 200,
      width: size.width,
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
                        "NYC",
                        style: AppStyles.headLineStyle3
                            .copyWith(color: Colors.white),
                      ),
                      const Spacer(),
                      const CircleWidget(),
                      Expanded(
                        child: Stack(
                          children: [
                            SizedBox(
                              child: LayoutBuilder(
                                  builder: (context, constraints) {
                                final spacewidth = constraints.constrainWidth();
                                print(
                                    "width of our box is : $spacewidth and height ${constraints.constrainHeight()}");

                                return Flex(
                                  direction: Axis.horizontal,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: List.generate(
                                      (spacewidth / 6).floor(),
                                      (index) => const Text("-")),
                                );
                              }),
                            ),
                            Center(
                              child: Transform.rotate(
                                angle: 1.5,
                                child: const Icon(Icons.airplanemode_active),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const CircleWidget(),
                      const Spacer(),
                      Text(
                        "London",
                        style: AppStyles.headLineStyle3
                            .copyWith(color: Colors.white),
                      )
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
