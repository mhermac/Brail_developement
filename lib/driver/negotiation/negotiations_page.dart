  import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../utility/styles/colors.dart';
import 'negotiation_unique.dart';
import 'negotiation_unique_pending_my.dart';
import 'negotiation_unique_rejected.dart';
import 'negotiation_unique_reply.dart';

class NegotiationPage extends StatelessWidget {
  const NegotiationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Container(decoration: BoxDecoration(color: BrailColors.whiteGrey,
     ),

    padding: EdgeInsets.symmetric(horizontal: 10),

    child: Column(children: [
        InkWell(onTap: (){
          Get.to(NegotiationUniqueReply());
        },
        child: Card(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),

          child: Column(
            children: [
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 8),
                child: Table( defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                  columnWidths: {
                    0: FixedColumnWidth(20),
                    1: IntrinsicColumnWidth(),
                    3: FixedColumnWidth(35),
                    4:IntrinsicColumnWidth(),
                  },
                  children: [
                    TableRow(
                        children: [
                          SvgPicture.asset('assets/svg/point_brail.svg',color: BrailColors.blue,),
                          Text('Gyumri'),
                          Container(),
                          SvgPicture.asset('assets/svg/arrow_brail.svg',color: BrailColors.blue,),
                          Text('Vladivastok')
                        ]
                    ),
                    TableRow(
                        children: [
                          Container(),
                          Padding(
                            padding:  EdgeInsets.only(top: 5),
                            child: Text('14/10/2021'),
                          ),
                          Container(),
                          Container(),
                          Padding(
                            padding:  EdgeInsets.only(top: 5),
                            child: Text('17/11/2021'),
                          ),

                        ]
                    )
                  ],),
              ),
              SizedBox(height: 10,),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: SvgPicture.asset('assets/svg/brail_package.svg'),
                      ),
                      Text('Pampers')
                    ],
                  ),
                  Container(decoration: BoxDecoration(color: BrailColors.yellow,
                      borderRadius: BorderRadius.only(bottomRight: Radius.circular(8))),

                    child: Container(
                      width: 200,
                      padding: const EdgeInsets.symmetric(vertical: 3),
                      child: Column(
                        children: [
                          Text('Status: Waiting for reply',style: TextStyle(color: BrailColors.white,fontWeight: FontWeight.bold),),
                          Text('Offer: \$1500',style: TextStyle(color: BrailColors.white,fontWeight: FontWeight.bold),)
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
      InkWell(onTap: (){
        Get.to(NegotiatonUniquePendingMy());
      },
        child: Card(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Table( defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                  columnWidths: {
                    0: FixedColumnWidth(20),
                    1: IntrinsicColumnWidth(),
                    3: FixedColumnWidth(35),
                    4:IntrinsicColumnWidth(),
                  },
                  children: [
                    TableRow(
                        children: [
                          SvgPicture.asset('assets/svg/point_brail.svg',color: BrailColors.blue,),
                          Text('Yerevan'),
                          Container(),
                          SvgPicture.asset('assets/svg/arrow_brail.svg',color: BrailColors.blue,),
                          Text('Moskva')
                        ]
                    ),
                    TableRow(
                        children: [
                          Container(),
                          Padding(
                            padding:  EdgeInsets.only(top: 5),
                            child: Text('12/11/2021'),
                          ),
                          Container(),
                          Container(),
                          Padding(
                            padding:  EdgeInsets.only(top: 5),
                            child: Text('12/14/2021'),
                          ),

                        ]
                    )
                  ],),
              ),
              SizedBox(height: 10,),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: SvgPicture.asset('assets/svg/brail_package.svg'),
                      ),
                      Text('Vodka')
                    ],
                  ),
                  Container(
                    decoration: BoxDecoration(color: Colors.grey,
                        borderRadius: BorderRadius.only(bottomRight: Radius.circular(8))),
                    child: Container(width: 200,padding: EdgeInsets.symmetric(vertical: 3),
                      child: Column(
                        children: [
                          Text('Status: Pending',style: TextStyle(color: BrailColors.white,fontWeight: FontWeight.bold),),
                          Text('My offer: \$1500',style: TextStyle(color: BrailColors.white,fontWeight: FontWeight.bold))
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
      InkWell(onTap: (){
Get.to(NegotiatonUnique());
      },
        child: Card(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Table( defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                  columnWidths: {
                    0: FixedColumnWidth(20),
                    1: IntrinsicColumnWidth(),
                    3: FixedColumnWidth(35),
                    4:IntrinsicColumnWidth(),
                  },
                  children: [
                    TableRow(
                        children: [
                          SvgPicture.asset('assets/svg/point_brail.svg',color: BrailColors.blue,),
                          Text('Yerevan'),
                          Container(),
                          SvgPicture.asset('assets/svg/arrow_brail.svg',color: BrailColors.blue,),
                          Text('Moskva')
                        ]
                    ),
                    TableRow(
                        children: [
                          Container(),
                          Padding(
                            padding:  EdgeInsets.only(top: 5),
                            child: Text('12/11/2021'),
                          ),
                          Container(),
                          Container(),
                          Padding(
                            padding:  EdgeInsets.only(top: 5),
                            child: Text('12/14/2021'),
                          ),

                        ]
                    )
                  ],),
              ),
              SizedBox(height: 10,),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: SvgPicture.asset('assets/svg/brail_package.svg'),
                      ),
                      Text('Wood')
                    ],
                  ),
                  Container(
                    decoration: BoxDecoration(color: BrailColors.green,
                        borderRadius: BorderRadius.only(bottomRight: Radius.circular(8))),
                    child: Container(width: 200,padding: EdgeInsets.symmetric(vertical: 3),
                      child: Column(
                        children: [
                          Text('Status: Approved',style: TextStyle(color: BrailColors.white,fontWeight: FontWeight.bold),),
                          Text('Reward: \$1500',style: TextStyle(color: BrailColors.white,fontWeight: FontWeight.bold))
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
      InkWell(onTap: (){
        Get.to(NegotiatonUniqueRejected());
      },
        child: Card(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Table( defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                  columnWidths: {
                    0: FixedColumnWidth(20),
                    1: IntrinsicColumnWidth(),
                    3: FixedColumnWidth(35),
                    4:IntrinsicColumnWidth(),
                  },
                  children: [
                    TableRow(
                        children: [
                          SvgPicture.asset('assets/svg/point_brail.svg',color: BrailColors.blue,),
                          Text('Yerevan'),
                          Container(),
                          SvgPicture.asset('assets/svg/arrow_brail.svg',color: BrailColors.blue,),
                          Text('Moskva')
                        ]
                    ),
                    TableRow(
                        children: [
                          Container(),
                          Padding(
                            padding:  EdgeInsets.only(top: 5),
                            child: Text('12/11/2021'),
                          ),
                          Container(),
                          Container(),
                          Padding(
                            padding:  EdgeInsets.only(top: 5),
                            child: Text('12/14/2021'),
                          ),
                        ]
                    )
                  ],),
              ),
              SizedBox(height: 10,),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: SvgPicture.asset('assets/svg/brail_package.svg'),
                      ),
                      Text('Vodka')
                    ],
                  ),
                  Container(
                    decoration: BoxDecoration(color: BrailColors.red,
                        borderRadius: BorderRadius.only(bottomRight: Radius.circular(8))),
                    child: Container(width: 200,height: 40,
                      child: Center(child: Text('Rejected',style: TextStyle(color: BrailColors.white,fontWeight: FontWeight.bold),))
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      )
    ],)
    );
  }
}
