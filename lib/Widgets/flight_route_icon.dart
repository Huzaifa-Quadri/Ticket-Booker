import 'package:flutter/material.dart';

import 'package:ticket_booking/Widgets/circle_widget.dart';

class FlightRouteWidget extends StatelessWidget {
  const FlightRouteWidget({super.key, this.color});
  final Color? color;

  //? New formatting of different widgets

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Spacer(),
        color == null ? const CircleWidget() : const CircleWidget(color: Colors.blue,),
        Expanded(
          child: LayoutBuilder(
            builder: (context, constraints) {
              final spaceWidth = constraints.maxWidth;
              return Stack(
                children: [
                  Flex(
                    direction: Axis.horizontal,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: List.generate(
                      (spaceWidth / 6).floor(),
                      (index) => Text(
                        "-",
                        style: TextStyle(color: color ?? Colors.white),
                      ),
                    ),
                  ),
                  Center(
                    child: Transform.rotate(
                      angle: 1.5,
                      child: Icon(
                        Icons.airplanemode_active,
                        color: color ?? Colors.white,
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
        color == null ? const CircleWidget() : const CircleWidget(color: Colors.blue,),
        const Spacer()
      ],
    );
  }

  // @override
  // Widget build(BuildContext context) {
  //   return Row(
  //     children: [
  //       const Spacer(),
  //       const CircleWidget(),
  //       Expanded(
  //         child: Stack(
  //           children: [
  //             SizedBox(
  //               child: LayoutBuilder(
  //                 builder: (context, constraints) {
  //                   final spaceWidth = constraints.constrainWidth();
  //                   return Flex(
  //                     direction: Axis.horizontal,
  //                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //                     children: List.generate(
  //                       (spaceWidth / 6).floor(),
  //                       (index) => const Text("-"),
  //                     ),
  //                   );
  //                 },
  //               ),
  //             ),
  //             Center(
  //               child: Transform.rotate(
  //                 angle: 1.5,
  //                 child: const Icon(Icons.airplanemode_active),
  //               ),
  //             ),
  //           ],
  //         ),
  //       ),
  //       const CircleWidget(),
  //       const Spacer(),
  //     ],
  //   );
  // }
}
