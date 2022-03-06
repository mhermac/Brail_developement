import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:test_nov_29_new/driver/login/controller.dart';
import 'package:test_nov_29_new/driver/widgets/reactive_input.dart';
import 'package:test_nov_29_new/routing/application_route_link.dart';

class DriverLoginScreen extends StatelessWidget {
  DriverLoginScreen({Key? key}) : super(key: key);
  DriverLogInController driverLogInController =
      Get.put(DriverLogInController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
          padding: EdgeInsets.only(
            right: 40.w,
            left: 40.w,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(
                height: 150.h,
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 80.0),
                child: Stack(
                  alignment: Alignment.topRight,
                  children: [
                    Center(child: SvgPicture.asset('assets/svg/brail.svg')),
                    InkWell(
                        onTap: () {},
                        child: Padding(
                          padding: const EdgeInsets.only(top: 10.5),
                          child: Text(
                            "Sign Up",
                            style: const TextStyle(
                                decoration: TextDecoration.underline,
                                fontFamily: "Montserrat",
                                color: Color(0xFF202122),
                                fontSize: 14,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.normal),
                          ),
                        ))
                  ],
                ),
              ),
              Column(
                children: [
                  ReactiveForm(
                    formGroup: driverLogInController.loginForm,
                    child: Column(
                      children: [
                        ReactiveInput(
                          textInputType: TextInputType.emailAddress,
                          hintText: 'Email',
                          textInputFormatter: MaskTextInputFormatter(mask: ''),
                          formControlName: 'email',
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        ReactiveInput(
                          textInputType: TextInputType.emailAddress,
                          hintText: 'Password',
                          textInputFormatter: MaskTextInputFormatter(mask: ''),
                          formControlName: 'password',
                        )
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: InkWell(
                      onTap: () => {},
                      child: Text(
                        "Forgot password",
                        style: const TextStyle(
                            decoration: TextDecoration.underline,
                            fontFamily: "Montserrat",
                            color: Color(0xFF202122),
                            fontSize: 14,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.normal),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.only(top: 40),
                child: OutlinedButton(
                  onPressed: () {
                    Get.toNamed(ApplicationRouteLink.DRIVER_HOME);
                  },
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(const Color(0xFF0E60B2)),
                      fixedSize:
                          MaterialStateProperty.all(const Size.fromHeight(56)),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(9.0),
                      )),
                      side: MaterialStateProperty.all(BorderSide.none),
                      alignment: Alignment.centerLeft),
                  child: Center(
                    child: Text(
                      "Log in",
                      style: const TextStyle(
                          fontFamily: 'Montserrat',
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.normal,
                          color: Colors.white,
                          fontSize: 14),
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  // color: Colors.white,
                  borderRadius: BorderRadius.circular(9),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 6,
                      offset: const Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10.h),
                child: Center(
                    child: Text(
                  "Or",
                  style: const TextStyle(
                      fontFamily: "Montserrat",
                      color: Color(0xFF8C8C91),
                      fontSize: 13,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.bold),
                )),
              ),
              Center(
                child: InkWell(
                  onTap: () {},
                  child: Column(
                    children: [
                      Text(
                        'Stay as a Guest',
                        style: const TextStyle(
                            decoration: TextDecoration.underline,
                            color: Color(0xFF202122),
                            fontFamily: 'Montserrat',
                            fontSize: 14,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.normal),
                      )
                    ],
                  ),
                ),
              ),
            ],
          )),
    ));
  }
}
