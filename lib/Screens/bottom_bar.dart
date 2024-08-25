import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:ticket_booking/Screens/TicketScreen.dart';

import 'package:ticket_booking/Screens/home.dart';
import 'package:ticket_booking/Screens/search_screen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomNavBar> {
  int activeIndex = 2;
  void _OnTappedNav(int index){
    setState(() {
      activeIndex = index;
    });

  }

  static final List<Widget> _widgetoption = <Widget>[
    const MyHomePage(),
    const SearchScreen(),
    const Ticketscreen(),
    const Text("Profile"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        // child: Text("Just do as i say !");
          child: _widgetoption[activeIndex]
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: _OnTappedNav,
        showSelectedLabels: false,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        currentIndex: activeIndex,
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: false,
        items: const[
          BottomNavigationBarItem(icon: Icon(FluentIcons.home_12_filled), label: "Home" ),
          BottomNavigationBarItem(icon: Icon(FluentIcons.search_12_regular), label: "Search"),
          BottomNavigationBarItem(icon: Icon(FluentIcons.ticket_horizontal_20_filled), label: "Label"),
          BottomNavigationBarItem(icon: Icon(FluentIcons.person_32_filled), label: "Profile"),
        ],
      ),
    );
  }
}
