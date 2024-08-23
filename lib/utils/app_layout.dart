import 'package:flutter/material.dart';
import 'package:get/get.dart';

//! Not usable !!!!
//! Error - Null check operator used on a null value
/*
Todo   The relevant error-causing widget was:
Todo      TicketView TicketView:file:///J:/flutter_projects/ticket_booking/lib/Screens/home.dart:104:44

*/
class AppLayout {
  static getSize(BuildContext context) {
    return MediaQuery.of(context).size;
  }

  static getScreenHeight() {
    return Get.height;
  }

  static getScreenWidth() {
    return Get.height;
  }

  static getHeight(double pixels) {
    double x = getScreenHeight() / pixels;
    return getScreenHeight() / x;
  }

  static getWidth(double pixels) {
    double x = getScreenWidth() / pixels;
    return getScreenWidth() / x;
  }
}
