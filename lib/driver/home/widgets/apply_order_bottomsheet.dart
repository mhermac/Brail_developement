import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';

import '../../../utility/styles/colors.dart';

class ApplyOrderBottomsheet extends StatelessWidget {
  const ApplyOrderBottomsheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
        children: [Container(
          padding: const EdgeInsets.only(
              left: 20,right: 20,top: 5,bottom: 40
          ),
          child: Column(
            children: [
              Container(
                width: 25,
                height: 5,
                decoration: BoxDecoration(
                    color: BrailColors.back,
                    borderRadius: BorderRadius.circular(3)),
              ),
              SizedBox(
                height: 25,
              ),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Apply for this request',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  )),
              SizedBox(
                height: 15,
              ),
              Column(
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
                          SvgPicture.asset('assets/svg/brail_van.svg',color: BrailColors.blue,),
                          Text('Tent'),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SvgPicture.asset('assets/svg/brail_weight.svg',color: BrailColors.blue,),
                          Text('22t'),
                        ],
                      ),
                      Row(
                        children: [
                          SvgPicture.asset('assets/svg/brail_package.svg',color: BrailColors.blue,),
                          Text('Vodka')
                        ],
                      ),

                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset('assets/svg/brail_price.svg',color: BrailColors.blue,),
                          Text('\$1700'+'(open for bids)'),

                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.payment,color: BrailColors.blue,),
                          Text('cash,after unloading')
                        ],
                      )
                    ],
                  )
                ],
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 100),
                child: TextFormField(
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.number,
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.digitsOnly
                  ],
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      enabledBorder: OutlineInputBorder(borderSide: BorderSide(width: 2,
                          color: BrailColors.green))
                  ),
                  textInputAction: TextInputAction.done,
                  initialValue: '1700',style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),


              SizedBox(height: 20,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: BrailColors.green,
                          padding: EdgeInsets.symmetric(vertical: 20)
                      ),
                      onPressed: () {},
                      child: Text('Apply for .',style: TextStyle(color: BrailColors.white,fontWeight: FontWeight.bold),)),
                ],
              )
            ],
          ),
        ),]
    );
  }
}
