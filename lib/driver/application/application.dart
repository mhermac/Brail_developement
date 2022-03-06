import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:test_nov_29_new/driver/current_order/current_order.dart';
import 'package:test_nov_29_new/driver/widgets/bottom_nav_bar.dart';
import 'package:test_nov_29_new/routing/application_route_link.dart';
import '../../utility/styles/colors.dart';
import '../community/community.dart';
import '../home/home.dart';
import '../negotiation/negotiation.dart';
import '../offers/offers.dart';
import 'controller.dart';


class ApplicationScreenBuyer extends StatelessWidget {
  final List<String> titleList = [
    "Dashboard",
    "Negotiations",
    'Driver Community',
    'My offers',
    'My offers',
  ];
  ApplicationScreenBuyer({Key? key}) : super(key: key);
  final GlobalKey<ScaffoldState> globalKey = GlobalKey<ScaffoldState>();
  DriverApplicationController driverApplicationController = Get.put(DriverApplicationController());
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: GestureDetector(
        onTap: () {
          // if (AuthorizationService.to.authorizedUser?.accessToken == null) {
          //   Get.offAllNamed(ApplicationRouteLink.LOGIN);
          // }
        },
        child: Scaffold(
            key: globalKey,
            appBar: AppBar(
              elevation: 0,
              automaticallyImplyLeading: false,
              backgroundColor: BrailColors.backgroundColor,
              centerTitle: true,
              title:
              Obx(()=> Text(titleList[driverApplicationController.bottomNavSelectedIndex.value])),
              actions: [
                IconButton(
                    padding: EdgeInsets.zero,
                    onPressed: () {
                     Get.toNamed(ApplicationRouteLink.DRIVER_NOTIFICATIONS);
                    },
                    icon: SvgPicture.asset(
                      'assets/svg/notification_brail.svg',
                      color: BrailColors.white,
                    )),
                IconButton(
                    onPressed: () {
                      Get.toNamed(ApplicationRouteLink.DRIVER_MENU);
                    },
                    icon: Icon(Icons.menu))
              ],
            ),
            bottomNavigationBar: Obx(() {
              return DriverBottomNavigationBar(
                currentIndex:
                driverApplicationController.bottomNavSelectedIndex.value,
                ontap: (index) {
                  driverApplicationController.bottomNavSelectedIndex.value = index;
                },
              );
            }),
            body: Obx(() {
              switch (driverApplicationController.bottomNavSelectedIndex.value) {
                case 0: //Tabs.home
                  return DriverHomeScreen();
                case 1: //Tabs.Product
                  return DriverNegotiationScreen();
                case 2: //Tabs.Product
                  return DriverCommunityScreen();
                case 3: //Tabs.Offers
                  return  DriverOffersScreen();
                default:
                  return DriverCurrentOrderScreen();
              }
            })),
      ),
    );
  }
}
