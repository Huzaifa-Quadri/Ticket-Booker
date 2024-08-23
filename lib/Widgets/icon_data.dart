import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking/utils/app_layout.dart';
import 'package:ticket_booking/utils/theme_style.dart';

class IconText extends StatelessWidget {
  const IconText(
      {super.key,
      required this.icon,
      required this.icontext,
      required this.isIconOn,
      required this.color});

  final IconData icon;
  final String icontext;
  final bool isIconOn;
  final Color color;

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);

    if (isIconOn) {
      return Container(
        height: size.width * 0.12,
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
        decoration: BoxDecoration(
          color: color,
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(10),
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10),
              topRight: Radius.circular(10)),
        ),
        child: Row(
          children: [
            Icon(
              icon,
              color: const Color(0xFFBFC2DF),
            ),
            const Gap(10),
            Text(
              icontext,
              style: AppStyles.headLineStyle3,
            ),
          ],
        ),
      );
    }

    return Container(
      height: size.width * 0.12,
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
      decoration: BoxDecoration(
        color: color,
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(10),
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10),
            topRight: Radius.circular(10)),
      ),
      child: Center(
        child: Text(
          icontext,
          style: AppStyles.headLineStyle3,
        ),
      ),
    );
  }
}