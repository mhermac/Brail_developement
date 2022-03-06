import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../utility/styles/colors.dart';

class DriverCurrentOrderScreen extends StatelessWidget {
  const DriverCurrentOrderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(elevation: 0,
        title: Text('Current order'),
        backgroundColor: BrailColors.backgroundColor,leading: Container(),),
      body: Column(
        children:[
          Container(
            color: BrailColors.backgroundColor,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
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
                        Text('Yerevan',
                          style: TextStyle(color: BrailColors.white,fontWeight: FontWeight.bold),),
                        Container(),
                        SvgPicture.asset(
                          'assets/svg/arrow_brail.svg',
                          color: BrailColors.blue,
                        ),
                        Text('Moskva',style: TextStyle(color: BrailColors.white,fontWeight: FontWeight.bold),)
                      ]),
                      TableRow(children: [
                        Container(),
                        Padding(
                          padding: EdgeInsets.only(top: 5),
                          child: Text('12/11/2021',
                            style: TextStyle(color: BrailColors.white,fontWeight: FontWeight.bold),),
                        ),
                        Container(),
                        Container(),
                        Padding(
                          padding: EdgeInsets.only(top: 5),
                          child: Text('12/14/2021',style: TextStyle(color: BrailColors.white,fontWeight: FontWeight.bold),),
                        ),
                      ])
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Divider( color: BrailColors.white,
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
                          SvgPicture.asset('assets/svg/brail_van.svg',color: BrailColors.white,),
                          Text('Tent',
                              style: TextStyle(
                                  color: BrailColors.white,
                                  fontWeight: FontWeight.bold)),
                        ],
                      ),
                      Row(
                        children: [
                          SvgPicture.asset(
                            'assets/svg/brail_package.svg',color: BrailColors.white,),
                          Text(
                            '2x1.6x2.4 m',
                            style:
                            TextStyle(fontWeight: FontWeight.bold,
                              color: BrailColors.white,
                            ),
                          )
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              SvgPicture.asset(
                                'assets/svg/brail_weight.svg',color: BrailColors.white,),
                              Text(
                                '4.5t',
                                style: TextStyle(color: BrailColors.white,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),

                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                Divider(color: BrailColors.white,endIndent: 10,indent: 10,),
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                  child: Row(
                    children: [
                      Icon(Icons.person,color: BrailColors.white,size: 35,),
                      SizedBox(width: 30,),
                      Text('Grand Tobaco',style: TextStyle(color: BrailColors.white,fontWeight: FontWeight.bold),),
                      Spacer(),
                      IconButton(padding: EdgeInsets.zero,
                          onPressed: (){}, icon:    Icon(Icons.phone_enabled,color: BrailColors.white,))
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 15,),
          InkWell(onTap: (){},
            child: Padding(
              padding:  EdgeInsets.symmetric(horizontal: 15),
              child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(padding: EdgeInsets.symmetric(horizontal: 10,vertical: 20),
                    width: double.infinity,decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),color: BrailColors.blue
                    ),child: Row(
                      children: [
                        Icon(Icons.document_scanner,color: BrailColors.white,),
                        SizedBox(width: 20,),
                        Text('Documents',style: TextStyle(color: BrailColors.white,fontWeight: FontWeight.bold,fontSize: 16),),
                      ],
                    )
                    ,)
                ],
              ),
            ),
          ),

          SizedBox(height: 15,),
          InkWell(onTap: (){},
            child: Padding(
              padding:  EdgeInsets.symmetric(horizontal: 15),
              child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(padding: EdgeInsets.symmetric(horizontal: 10,vertical: 20),
                    width: double.infinity,decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),color: BrailColors.blue
                    ),child: Row(
                      children: [
                        Icon(Icons.playlist_add_check,color: BrailColors.white,),
                        SizedBox(width: 20,),
                        Text('Check-ups',style: TextStyle(color: BrailColors.white,fontWeight: FontWeight.bold,fontSize: 16),),
                      ],
                    ),)
                ],
              ),
            ),
          ),

        ],
      ),
    );
  }
}
