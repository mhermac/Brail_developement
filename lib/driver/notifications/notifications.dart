import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_nov_29_new/utility/styles/colors.dart';
import 'controller.dart';


class DriverNotificationPage extends StatelessWidget {
  DriverNotificationPage({Key? key}) : super(key: key);
  DriverNotificationController driverNotificationController = Get.put(DriverNotificationController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notifications'),
        backgroundColor: BrailColors.backgroundColor,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Today (2)'),
            SizedBox(height: 10,),
            InkWell(
              onTap: () {
                driverNotificationController.ontap();
              },
              child: Obx(
                    () => ListTile(
                  tileColor: driverNotificationController.isSeen.value ? Colors.blue.shade100 : null,
                  contentPadding: EdgeInsets.zero,
                  leading: Icon(Icons.local_offer),
                  title: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(text: 'Company offered you ',style: TextStyle(color: BrailColors.textDark)),
                        TextSpan(
                            text: '\$1500 ',
                            style: TextStyle(fontWeight: FontWeight.bold,color: BrailColors.textDark)),
                        TextSpan(text: 'for ',style: TextStyle(color: BrailColors.textDark)),
                        TextSpan(text: '#2788332 ',style: TextStyle(color: BrailColors.textDark,fontWeight: FontWeight.bold)),
                        TextSpan(text: 'order',style: TextStyle(color: BrailColors.textDark)),
                      ],
                    ),
                  ),
                  // child: Text('Company offered you \$1500 for #2788332 order')),
                  trailing: Text('9:35 AM'),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
