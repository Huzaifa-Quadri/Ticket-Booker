import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking/utils/theme_style.dart';

class HotelViewScreen extends StatelessWidget {
  const HotelViewScreen({super.key, required this.hotels});

  final Map<String, dynamic> hotels;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 17, horizontal: 15),
      margin: const EdgeInsets.only(top: 5, right: 17),
      height: 350,
      width: size.width * 0.6,
      decoration: BoxDecoration(
          color: AppStyles.primaryColor,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade300,
              blurRadius: 20,
              spreadRadius: 5,
            )
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: AppStyles.primaryColor,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  "assets/images/${hotels['image']}.jpg",
                ),
              ),
            ),
          ),
          const Gap(5),
          Text(hotels['place'],
              style: AppStyles.headLineStyle2
                  .copyWith(color: AppStyles.kakiColor)),
          const Gap(5),
          Text(hotels['destination'],
              style: AppStyles.headLineStyle3.copyWith(color: Colors.white)),
          const Gap(5),
          Text("\$${hotels['price']}/night",
              style: AppStyles.headLineStyle1
                  .copyWith(color: AppStyles.kakiColor)),
        ],
      ),
    );
  }
}
