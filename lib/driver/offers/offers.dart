import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:test_nov_29_new/routing/application_route_link.dart';

import '../../utility/styles/colors.dart';

class DriverOffersScreen extends StatelessWidget {
  const DriverOffersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
        padding: const EdgeInsets.only(left: 10.0,right: 10,bottom: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 550,
              child: ListView(
                padding: EdgeInsets.symmetric(vertical: 10),
                children: [
                  Container(
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            blurRadius: 12,
                            offset: Offset(3, 6),
                          ),
                        ],
                        color: BrailColors.white,
                        borderRadius: BorderRadius.circular(8)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        // MenuEdit(
                        //   onDeletePressed: () {
                        //     print('delete');
                        //   },
                        //   onEditPressed: () {
                        //     print('edit');
                        //   },
                        // ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Table(
                            defaultVerticalAlignment:
                            TableCellVerticalAlignment.middle,
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
                                Text('Yerevan'),
                                Container(),
                                SvgPicture.asset(
                                  'assets/svg/arrow_brail.svg',
                                  color: BrailColors.blue,
                                ),
                                Text('Moskva')
                              ]),
                              TableRow(children: [
                                Container(),
                                Padding(
                                  padding: EdgeInsets.only(top: 5),
                                  child: Text('12/11/2021'),
                                ),
                                Container(),
                                Container(),
                                Padding(
                                  padding: EdgeInsets.only(top: 5),
                                  child: Text('12/14/2021'),
                                ),
                              ])
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Divider(
                          endIndent: 8,
                          indent: 8,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SvgPicture.asset('assets/svg/brail_van.svg'),
                                  Text('Tent',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                ],
                              ),
                              Row(
                                children: [
                                  SvgPicture.asset(
                                      'assets/svg/brail_package.svg'),
                                  Text(
                                    '2x1.6x2.4 m',
                                    style:
                                    TextStyle(fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      SvgPicture.asset(
                                          'assets/svg/brail_weight.svg'),
                                      Text(
                                        '4.5t',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            blurRadius: 12,
                            offset: Offset(3, 6),
                          ),
                        ],
                        color: BrailColors.white,
                        borderRadius: BorderRadius.circular(8)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        // MenuEdit(
                        //   onDeletePressed: () {
                        //     print('delete');
                        //   },
                        //   onEditPressed: () {
                        //     print('edit');
                        //   },
                        // ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Table(
                            defaultVerticalAlignment:
                            TableCellVerticalAlignment.middle,
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
                                Text('Yerevan'),
                                Container(),
                                SvgPicture.asset(
                                  'assets/svg/arrow_brail.svg',
                                  color: BrailColors.blue,
                                ),
                                Text('Moskva')
                              ]),
                              TableRow(children: [
                                Container(),
                                Padding(
                                  padding: EdgeInsets.only(top: 5),
                                  child: Text('12/11/2021'),
                                ),
                                Container(),
                                Container(),
                                Padding(
                                  padding: EdgeInsets.only(top: 5),
                                  child: Text('12/14/2021'),
                                ),
                              ])
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Divider(
                          endIndent: 8,
                          indent: 8,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SvgPicture.asset('assets/svg/brail_van.svg'),
                                  Text('Tent',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                ],
                              ),
                              Row(
                                children: [
                                  SvgPicture.asset(
                                      'assets/svg/brail_package.svg'),
                                  Text(
                                    '2x1.6x2.4 m',
                                    style:
                                    TextStyle(fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      SvgPicture.asset(
                                          'assets/svg/brail_weight.svg'),
                                      Text(
                                        '4.5t',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 55,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: BrailColors.backgroundColor),
                  onPressed: () {
                   Get.toNamed(ApplicationRouteLink.DRIVER_ADD_EDIT_OFFER);
                  },
                  child: Text(
                    'Add new offer',
                    style: TextStyle(
                        color: BrailColors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  )),
            )
          ],
        ),
      );
  }
}
