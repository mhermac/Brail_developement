import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DriverNotificationController extends GetxController{
  RxBool isSeen = true.obs;

  void ontap(){
    isSeen.value = false;

  }
}