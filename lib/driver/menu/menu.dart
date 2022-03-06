import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../utility/styles/colors.dart';

class DriverMenuScreen extends StatefulWidget {
  DriverMenuScreen({Key? key}) : super(key: key);

  @override
  State<DriverMenuScreen> createState() => _DriverMenuScreenState();
}

class _DriverMenuScreenState extends State<DriverMenuScreen> {
  List<MenuItem> menuItems = [
    MenuItem(
        text: 'Balance', icon: SvgPicture.asset('assets/svg/back.svg')),
    MenuItem(
        text: 'Profile settings',
        icon: SvgPicture.asset('assets/svg/back.svg')),
    MenuItem(
        text: 'Credit cards', icon: SvgPicture.asset('assets/svg/back.svg')),
    MenuItem(
        text: 'Change password', icon: SvgPicture.asset('assets/svg/back.svg')),
    MenuItem(
        text: 'Preferences', icon: SvgPicture.asset('assets/svg/back.svg'))
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Brail'),
        elevation: 0,
        backgroundColor: BrailColors.backgroundColor,
      ),
      body: Container(
        padding: EdgeInsets.only(left: 20.w,right: 20.w,top: 30),
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Align(
              //   alignment: Alignment.centerRight,
              //   child:
              //   IconButton(
              //     onPressed: () {
              //       Get.back();
              //     },
              //     icon: Icon(Icons.close),
              //     color: BrailColors.white,
              //   ),
              // ),
              _accountDetails(),
              Divider(color: BrailColors.white,),
              Column(
                  children: menuItems.asMap().entries.map((e) {
                    int idx = e.key;
                    return Container(decoration: BoxDecoration(color: BrailColors.white,borderRadius: BorderRadius.circular(8)),
                      padding: EdgeInsets.all(5),
                      margin: EdgeInsets.symmetric(vertical: 5),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(e.value.text,style: TextStyle(color: BrailColors.backgroundColor),),
                              Spacer(),
                              IconButton(
                                  splashRadius: 35,
                                  color: BrailColors.white,
                                  padding: EdgeInsets.zero,
                                  onPressed: () {
                                  },
                                  icon: e.value.icon)
                            ],
                          ),

                        ],
                      ),
                    );
                  }).toList()),
              // Row(
              //   children: [
              //     Text('Balance',style: TextStyle(color: BrailColors.white,fontWeight: FontWeight.bold),),
              //     Spacer(),
              //     Icon(Icons.add,color: BrailColors.white,)
              //   ],
              // ),
              // Divider(color: BrailColors.white,),
            ],
          ),
        ),
      ),
      backgroundColor: BrailColors.backgroundColor,
    );
  }
}

Widget _accountDetails(){
  return Container(
    child:
    Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 64,
          width: 64,
          child: Image.asset('assets/png/IMG_7129.jpeg'),
        ),
        Container(
          //color: Colors.red,
          margin: const EdgeInsets.only(top: 8.0, left: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Mher",
                style: TextStyle(color: BrailColors.white,
                    fontWeight: FontWeight.bold, fontSize: 14),
              ),
              Text(
                "Simonyan",
                style: TextStyle(color: BrailColors.white,
                    fontSize: 14),
              ),
            ],
          ),
        )
      ],
    ),

  );
}


class MenuItem {
  final String text;
  final Widget icon;
  const MenuItem({required this.text, required this.icon});
}