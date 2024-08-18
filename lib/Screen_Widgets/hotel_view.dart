import 'package:flutter/material.dart';
import 'package:ticket_booking/utils/theme_style.dart';

class HotelViewScreen extends StatelessWidget {
  const HotelViewScreen({super.key});

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
              image: const DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  "assets/images/image_one.jpg",
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
