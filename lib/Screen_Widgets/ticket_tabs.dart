import 'package:flutter/material.dart';
import 'package:ticket_booking/utils/app_layout.dart';

class TicketTabs extends StatelessWidget {
  const TicketTabs({super.key, required this.tab1, required this.tab2});

  final String tab1;
  final String tab2;

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);

    return Container(
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
              child: Center(child: Text(tab1)),
            ),

            //!------- Hotels ---------------------------------------------------
            Expanded(
              child: Container(
                width: size.width * 0.44,
                padding: const EdgeInsets.symmetric(vertical: 8),
                decoration: BoxDecoration(
                  color: Colors.grey[50],
                  borderRadius:
                      const BorderRadius.horizontal(right: Radius.circular(50)),
                ),
                child: Center(child: Text(tab2)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
