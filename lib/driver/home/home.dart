import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/driver_order.dart';

class DriverHomeScreen extends StatelessWidget {
RxBool isBottomShitOpened = true.obs;
   DriverHomeScreen({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(()=>
      ImageFiltered(
        imageFilter: ImageFilter.blur(
            sigmaX: isBottomShitOpened.value ? 0 : 2, sigmaY: isBottomShitOpened.value ? 0 : 2),
        child: Scaffold(
          body: Column(children: [
              DriverOrderWidget(
                isSelected: isBottomShitOpened,
                from: 'Yerevan',
                money: '2100',
                truckType: 'Ref',
                loadType: 'Fruit',
                toDate: '12/02/2022',
                fromDate: '08/02/2122',
                to: 'Moscow',
              ),
              DriverOrderWidget(
                isSelected: isBottomShitOpened,
                from: 'Abovyan',
                money: '2500',
                truckType: 'Ref',
                loadType: 'Fish',
                toDate: '14/03/2022',
                fromDate: '27/03/2122',
                to: 'Voronej',
              ),
              DriverOrderWidget(
                isSelected: isBottomShitOpened,
                from: 'Ararat',
                money: '2200',
                truckType: 'Tent',
                loadType: 'Stone',
                toDate: '18/02/2022',
                fromDate: '28/02/2122',
                to: 'Stavropol',
              ),
            ]),
        ),
      ),
    );
  }
}
