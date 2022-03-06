import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../utility/styles/colors.dart';

class NegotiatonUniqueRejected extends StatelessWidget {
  const NegotiatonUniqueRejected({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BrailColors.backgroundColor,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: BrailColors.backgroundColor,
        title: Text('Yerevan - Moscow'),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        decoration: BoxDecoration(
            color: BrailColors.white, borderRadius: BorderRadius.circular(8)),
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: Chip(
                labelPadding: EdgeInsets.zero,
                label: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                    Text('95%')
                  ],
                ),
              ),
            ),
            Table(
              defaultVerticalAlignment: TableCellVerticalAlignment.middle,
              columnWidths: {
                0: FixedColumnWidth(20),
                1: IntrinsicColumnWidth(),
                3: FixedColumnWidth(35),
                4: IntrinsicColumnWidth(),
              },
              children: [
                TableRow(children: [
                  SvgPicture.asset(
                    'assets/svg/point_brail.svg',
                    color: BrailColors.blue,
                  ),
                  Text('Gyumri'),
                  Container(),
                  SvgPicture.asset(
                    'assets/svg/arrow_brail.svg',
                    color: BrailColors.blue,
                  ),
                  Text('Vladivastok')
                ]),
                TableRow(children: [
                  Container(),
                  Padding(
                    padding: EdgeInsets.only(top: 5),
                    child: Text('14/10/2021'),
                  ),
                  Container(),
                  Container(),
                  Padding(
                    padding: EdgeInsets.only(top: 5),
                    child: Text('17/11/2021'),
                  ),
                ])
              ],
            ),
            Divider(
              color: BrailColors.backgroundColor,
            ),
            Expanded(
              child: Column(children: [
                SizedBox(
                  height: 20,
                ),
                Align(alignment: Alignment.centerRight  ,
                    child: Chip(
                        label: Text(
                          '\$1500',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        backgroundColor: BrailColors.backgroundColor)),
                Align(alignment: Alignment.centerLeft  ,
                    child: Chip(avatar: Icon(Icons.close,color: Colors.white,),
                        label: Text(
                          'Rejected',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        backgroundColor: BrailColors.red)),
                Spacer(),
                Row(mainAxisSize: MainAxisSize.min,
                  children: [
                    Chip(
                        avatar: Icon(Icons.done,color: Colors.white,),
                        label: Text(
                          'Reject and remove',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        backgroundColor: BrailColors.red),
                    Expanded(
                      child: Container(
                        child: Chip(backgroundColor: BrailColors.backgroundColor,
                          padding: EdgeInsets.zero,
                          label: TextField(style: TextStyle(color:BrailColors.white),
                            decoration: InputDecoration(
                              hintText: 'Offer new price',hintStyle: TextStyle( color: Colors.white),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                    ),

                  ],
                ),

                SizedBox(height: 15,)
              ],),
            )


          ],
        ),
      ),
    );
  }
}
