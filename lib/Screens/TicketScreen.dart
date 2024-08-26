// ignore: file_names
import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'package:ticket_booking/utils/app_info_list.dart';
import 'package:ticket_booking/utils/theme_style.dart';

import 'package:ticket_booking/Widgets/Dashes_line_widget.dart';
import 'package:ticket_booking/Widgets/column_layout.dart';
import 'package:ticket_booking/Screen_Widgets/ticket_tabs.dart';
import 'package:ticket_booking/Screen_Widgets/ticket_view.dart';

class Ticketscreen extends StatelessWidget {
  const Ticketscreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Color _dashedlinecolor = Colors.grey.shade600;

    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: Stack(
        children: [
          ListView(
            padding: const EdgeInsets.only(left: 10, right: 10),
            children: [
              const Gap(40),
              Text('Tickets',
                  style: AppStyles.headLineStyle1.copyWith(fontSize: 30)),
              const Gap(20),
              const TicketTabs(tab1: 'Upcomming', tab2: 'Previous'),
              const Gap(20),
              Container(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: TicketView(
                  tickets: ticketList[1],
                  color: Colors.white,
                ),
              ),
              // Gap(20),
              Container(
                margin: const EdgeInsets.only(left: 25, right: 25),
                color: Colors.white,
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                ),
                child: Column(
                  children: [
                    DashedlineSeperatorWidget(
                      sections: 14,
                      color: _dashedlinecolor,
                    ),
                    const Gap(20),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppColumnLayout(
                          textLine1: 'Flutter Db',
                          textLine2: 'Passanger',
                          mycrossAxisAlignment: CrossAxisAlignment.start,
                        ),
                        AppColumnLayout(
                          textLine1: '5221 364869',
                          textLine2: 'passport',
                          mycrossAxisAlignment: CrossAxisAlignment.end,
                        )
                      ],
                    ),
                    const Gap(10),
                    DashedlineSeperatorWidget(
                      sections: 14,
                      color: _dashedlinecolor,
                    ),
                    const Gap(10),
                    const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppColumnLayout(
                            textLine1: '364738 28274478',
                            textLine2: 'Number of E-ticket',
                            mycrossAxisAlignment: CrossAxisAlignment.start,
                          ),
                          AppColumnLayout(
                            textLine1: 'B2SG28',
                            textLine2: 'Booking Code',
                            mycrossAxisAlignment: CrossAxisAlignment.end,
                          ),
                        ]),
                    const Gap(20),
                    DashedlineSeperatorWidget(
                        sections: 14, color: _dashedlinecolor),
                    const Gap(10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  'assets/images/visa_logo.png',
                                  height: 20,
                                ),
                                Text(
                                  " *** 2462",
                                  style: AppStyles.headLineStyle3,
                                ),
                              ],
                            ),
                            const Gap(5),
                            Text(
                              'Payment method',
                              style: AppStyles.headLineStyle4
                                  .copyWith(color: Colors.grey.shade400),
                            ),
                          ],
                        ),
                        const AppColumnLayout(
                          textLine1: "\$249.99",
                          textLine2: "Price",
                          mycrossAxisAlignment: CrossAxisAlignment.end,
                        )
                      ],
                    ),
                    const Gap(10),
                    DashedlineSeperatorWidget(
                      sections: 14,
                      color: _dashedlinecolor,
                    )
                  ],
                ),
              ),
              Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                  ),
                ),
                margin: const EdgeInsets.only(left: 25, right: 25),
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: BarcodeWidget(
                    data: 'https://github.com/Huzaifa-Quadri',
                    barcode: Barcode.code128(),
                    drawText: false,
                    width: double.infinity,
                    height: 70,
                  ),
                ),
              ),
              const Gap(30),
              Container(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: TicketView(
                  tickets: ticketList[1],
                ),
              ),
            ],
          ),
          Positioned(
            left: -9,
            top: 400,
            child: Container(
              height: 20,
              padding: const EdgeInsets.all(2),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: AppStyles.textColor, width: 2),
              ),
              child: CircleAvatar(
                maxRadius: 40,
                backgroundColor: AppStyles.textColor,
              ),
            ),
          ),
          Positioned(
            right: -9,
            top: 400,
            child: Container(
              height: 20,
              padding: const EdgeInsets.all(2),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: AppStyles.textColor, width: 2),
              ),
              child: CircleAvatar(
                maxRadius: 40,
                backgroundColor: AppStyles.textColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
