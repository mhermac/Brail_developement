import 'package:get/get.dart';

class DriverApplicationController extends GetxController{

  RxInt bottomNavSelectedIndex = 0.obs;

  void onBottomNavigationItemSelected(int index) {
    // if(!AuthorizationService.to.isLoggedIn.value) {
    //   Get.toNamed(ApplicationRouteLink.LOGIN);
    // } else {
    bottomNavSelectedIndex.value = index;
    // }
  }
}