import 'package:flutter/cupertino.dart';
import 'package:test_nov_29_new/driver/login/login.dart';
import 'package:test_nov_29_new/routing/application_route_link.dart';

import '../driver/add_edit_offer/add_edit_offer.dart';
import '../driver/application/application.dart';
import '../driver/current_order/current_order.dart';
import '../driver/home/home.dart';
import '../driver/menu/menu.dart';
import '../driver/negotiation/negotiations_page.dart';
import '../driver/notifications/notifications.dart';
import '../driver/offers/offers.dart';

class ApplicationRoute{
  static final ApplicationRoute _singleton = ApplicationRoute._internal();

  factory ApplicationRoute (){
    return _singleton;
  }
  ApplicationRoute._internal();

  Route? generateRoute(RouteSettings settings){
    switch(settings.name){
      case ApplicationRouteLink.LOGIN:
        return CupertinoPageRoute(builder: (_) => DriverLoginScreen());
      case ApplicationRouteLink.DRIVER_HOME:
        return CupertinoPageRoute(builder: (_) => ApplicationScreenBuyer());
      case ApplicationRouteLink.DRIVER_NOTIFICATIONS:
        return CupertinoPageRoute(builder: (_) => DriverNotificationPage());
      case ApplicationRouteLink.DRIVER_MENU:
        return CupertinoPageRoute(builder: (_) => DriverMenuScreen());
      case ApplicationRouteLink.DRIVER_NEGOTIATIONS:
        return CupertinoPageRoute(builder: (_)=>NegotiationPage());
      case ApplicationRouteLink.DRIVER_OFFERS:
        return CupertinoPageRoute(builder: (_)=>DriverOffersScreen());
      case ApplicationRouteLink.DRIVER_ADD_EDIT_OFFER:
        return CupertinoPageRoute(builder: (_)=>DriverAddEditOffer());
      case ApplicationRouteLink.DRIVER_CURRENT_ORDER:
        return CupertinoPageRoute(builder: (_)=>DriverCurrentOrderScreen());
    }

  }
  // Bindings? initialBinding() {
  //   return BindingsBuilder(() {
  //
  //   });
  // }
}