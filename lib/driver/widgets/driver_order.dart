import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:test_nov_29_new/driver/home/widgets/apply_order_bottomsheet.dart';

import '../../utility/styles/colors.dart';

class DriverOrderWidget extends StatefulWidget {
  String from;
  String to;
  String fromDate;
  String toDate;
  String truckType;
  String loadType;
  String money;
  RxBool isSelected = false.obs;

  DriverOrderWidget({
    Key? key,
    required this.money,
    required this.isSelected,
    required this.loadType,
    required this.truckType,
    required this.toDate,
    required this.fromDate,
    required this.to,
    required this.from,
    
  }) : super(key: key);

  @override
  _DriverOrderWidgetState createState() => _DriverOrderWidgetState();
}

class _DriverOrderWidgetState extends State<DriverOrderWidget> {

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        padding: EdgeInsets.symmetric(horizontal: 5),
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            blurRadius: 12,
            offset: Offset(3, 6),
          ),
        ], color: BrailColors.white, borderRadius: BorderRadius.circular(8)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Table(
              defaultVerticalAlignment: TableCellVerticalAlignment.middle,
              columnWidths: {
                0: FixedColumnWidth(20),
                1: IntrinsicColumnWidth(),
                3: FixedColumnWidth(35),
                4: IntrinsicColumnWidth()
              },
              children: [
                TableRow(children: [
                  SvgPicture.asset(
                    'assets/svg/point_brail.svg',
                    color: BrailColors.blue,
                  ),
                  Text(widget.from),
                  Container(),
                  SvgPicture.asset(
                    'assets/svg/arrow_brail.svg',
                    color: BrailColors.blue,
                  ),
                  Text(widget.to)
                ]),
                TableRow(children: [
                  Container(),
                  Padding(
                    padding: EdgeInsets.only(top: 5),
                    child: Text(widget.fromDate),
                  ),
                  Container(),
                  Container(),
                  Padding(
                    padding: EdgeInsets.only(top: 5),
                    child: Text(widget.toDate),
                  ),
                ])
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SvgPicture.asset('assets/svg/brail_van.svg'),
                    Text(widget.truckType),
                  ],
                ),
                Row(
                  children: [
                    SvgPicture.asset('assets/svg/brail_package.svg'),
                    Text(widget.loadType)
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Reward (open for bids)'),
                    Text('\$${widget.money}, (cash, right after unloading )')
                  ],
                ),
                ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                        MaterialStateProperty.all(BrailColors.green)),
                    onPressed: () {
                      widget.isSelected.value = !widget.isSelected.value;
                      Get.bottomSheet(ApplyOrderBottomsheet(),
                        backgroundColor: BrailColors.white,
                        shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(8), topLeft: Radius.circular(8)),
                      ),).then((value) {widget.isSelected.value = !widget.isSelected.value;});
                    },
                    child: Text('Apply')),
              ],
            )
          ],
        ),
      );
  }
}
