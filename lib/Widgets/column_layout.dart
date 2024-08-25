import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'package:ticket_booking/utils/theme_style.dart';

class AppColumnLayout extends StatelessWidget {
  const AppColumnLayout({
    super.key,
    required this.textLine1,
    required this.textLine2, 
    required this.mycrossAxisAlignment,
    this.color
  });

  final String textLine1;
  final String textLine2;
  final CrossAxisAlignment mycrossAxisAlignment;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: mycrossAxisAlignment,
      children: [
        Text(
          textLine1,
          style: AppStyles.headLineStyle3,
        ),
        const Gap(5),
        Text(
          textLine2,
          style: AppStyles.headLineStyle4.copyWith(color: Colors.grey.shade400),
        )
      ],
    );
  }
}
