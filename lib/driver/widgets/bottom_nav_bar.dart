import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';



class DriverBottomNavigationBar extends StatelessWidget {
  Function(int) ontap;
  int currentIndex;
  DriverBottomNavigationBar({Key? key, required this.ontap, this.currentIndex=0}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 20),
      decoration: const BoxDecoration(
        color: Color(0xFFF6F6F6),
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(30), topLeft: Radius.circular(30)),
        boxShadow: [
          BoxShadow(color: Color(0x31557447), spreadRadius: 0, blurRadius: 6),
        ],
      ),
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(8.0),
          topRight: Radius.circular(8.0),
        ),
        child:
        BottomNavigationBar(
            backgroundColor: const Color(0xFFF6F6F6),
            selectedIconTheme: const IconThemeData(color: Color(0xFF352D6C)),
            selectedItemColor: const Color(0xFF352D6C),
            unselectedIconTheme: const IconThemeData(
              color: Color(0xFF434343),
            ),
            unselectedItemColor: const Color(0xFF434343),
            currentIndex: currentIndex,
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(label: 'Home', icon: Icon(Icons.home)),
              BottomNavigationBarItem(
                  label: 'Negotiations', icon: Icon(Icons.announcement_rounded)),
              BottomNavigationBarItem(
                  label: 'Comunnity', icon: Icon(Icons.people_rounded)),
              BottomNavigationBarItem(
                  label: 'My offers', icon: Icon(Icons.person_pin_rounded)),
              BottomNavigationBarItem(
                  label: 'Ongoing', icon: Icon(Icons.event_available_rounded))
            ],
            onTap: ontap
        ),
      ),
    );
  }
}