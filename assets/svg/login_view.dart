import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:test_nov_29_new/routing/application_route_link.dart';


class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: SingleChildScrollView(
  child: Padding(
         padding:  EdgeInsets.only(right: 40.w,left: 40,top: 60),
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.stretch,
           mainAxisAlignment: MainAxisAlignment.end,
           children: [
             Container(
               margin: const EdgeInsets.only(bottom: 80.0),
               child: Stack(
                 alignment: Alignment.topRight,
                 children: [
                  Center(child: SvgPicture.asset('assets/svg/brail.svg')),
                   InkWell(
                       onTap: () {},
                       child:
                       Padding(
                         padding: const EdgeInsets.only(top: 10.5),
                         child: Text(
                           "Sign Up",
                           style: const TextStyle(
                               decoration: TextDecoration.underline,
                               fontFamily: "Montserrat",
                               color: Color(0xFF202122),
                               fontSize: 14,
                               fontStyle: FontStyle.normal,
                               fontWeight: FontWeight.normal
                           ),
                         ),
                       )
                   )
                 ],
               ),
             ),
             Column(
               children: [
                 TextFormField(
                   keyboardType: TextInputType.emailAddress,
                   textInputAction: TextInputAction.next,
                   style: const TextStyle(
                     fontFamily: "Montserrat",
                     color: Color(0xFF27282B),
                     fontSize: 14,
                     fontStyle: FontStyle.normal,
                     fontWeight: FontWeight.normal,
                   ),
                   decoration: InputDecoration (
                     filled: true,
                     fillColor: const Color(0xFFF2F2F2),
                     hintText: 'Email',
                     enabledBorder: const OutlineInputBorder(
                         borderSide: BorderSide(
                             color: Color(0xFFE8E8E8)
                         )
                     ),
                     focusedBorder: const OutlineInputBorder(
                         borderSide: BorderSide(
                             color: Color(0xFFE8E8E8)
                         )
                     ),
                     contentPadding: const EdgeInsets.symmetric(vertical: 19.0, horizontal: 16.0),
                   ),
                 ),
                 Align(
                   alignment: Alignment.topLeft,
                   child: Visibility(
                     maintainState: true,
                     maintainSize: true,
                     maintainAnimation: true,
                     child: Text(
                       '',
                       style: const TextStyle(
                           fontFamily: 'Roboto',
                           fontSize: 10.0,
                           letterSpacing: -0.3,
                           color: Colors.red,
                           fontStyle: FontStyle.normal,
                           fontWeight: FontWeight.normal
                       ),
                     ),
                   ),
                 )
               ],
             ),
             Column(
               children: [
                 TextFormField(
                   obscureText: true,
                   style: const TextStyle(
                     fontFamily: "Montserrat",
                     color: Color(0xFF27282B),
                     fontSize: 14,
                     fontStyle: FontStyle.normal,
                     fontWeight: FontWeight.normal,
                   ),
                   decoration: InputDecoration (
                     filled: true,
                     fillColor: const Color(0xFFF2F2F2),
                     hintText: "Password",
                     enabledBorder: const OutlineInputBorder(
                         borderSide: BorderSide(
                             color: Color(0xFFE8E8E8)
                         )
                     ),
                     focusedBorder: const OutlineInputBorder(
                         borderSide: BorderSide(
                             color: Color(0xFFE8E8E8)
                         )
                     ),
                     contentPadding: const EdgeInsets.symmetric(vertical: 19.0, horizontal: 16.0),
                   ),
                 ),
                 Align(
                   alignment: Alignment.topLeft,
                   child: Visibility(
                     maintainState: true,
                     maintainSize: true,
                     maintainAnimation: true,
                     child: Text(
                     '',
                       style: const TextStyle(
                           fontFamily: 'Roboto',
                           fontSize: 10.0,
                           letterSpacing: -0.3,
                           color: Colors.red,
                           fontStyle: FontStyle.normal,
                           fontWeight: FontWeight.normal
                       ),
                     ),
                   ),
                 ),
               ],
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
                       fontWeight: FontWeight.normal
                   ),
                 ),
               ),
             ),

             Container(
               margin: const EdgeInsets.only(top: 40),
               child:
                  OutlinedButton(
                   onPressed: (){
                     Get.toNamed(ApplicationRouteLink.DRIVER_HOME);
                   },
                   style: ButtonStyle(
                       backgroundColor: MaterialStateProperty.all(const Color(0xFF0E60B2)),
                       fixedSize: MaterialStateProperty.all(const Size.fromHeight(56)),
                       shape: MaterialStateProperty.all(RoundedRectangleBorder(
                         borderRadius: BorderRadius.circular(9.0),
                       )),
                       side: MaterialStateProperty.all(BorderSide.none),
                       alignment: Alignment.centerLeft
                   ),
                   child: Center(
                     child: Text(
                       "Log in",
                       style: const TextStyle(
                           fontFamily: 'Montserrat',
                           fontStyle: FontStyle.normal,
                           fontWeight: FontWeight.normal,
                           color: Colors.white,
                           fontSize: 14
                       ),
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
               padding: const EdgeInsets.symmetric(vertical: 20.0),
               child: Center(
                   child: Text(
                     "Or",
                     style: const TextStyle(
                         fontFamily: "Montserrat",
                         color: Color(0xFF8C8C91),
                         fontSize: 13,
                         fontStyle: FontStyle.normal,
                         fontWeight: FontWeight.bold
                     ),
                   )
               ),
             ),


             Center(
               child: InkWell(
                 onTap: (){

                 },
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
                           fontWeight: FontWeight.normal
                       ),
                     )
                   ],
                 ),
               ),
             ),

           ],
         )
     ),
),
    );
  }
}
