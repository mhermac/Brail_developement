import 'package:flutter/material.dart';

import '../../utility/styles/colors.dart';

class DriverAddEditOffer extends StatelessWidget {
  const DriverAddEditOffer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(resizeToAvoidBottomInset: true,
      appBar: AppBar(
        title: Text(
          'New offer',
          style: TextStyle(
              color: BrailColors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold ),
        ),
        backgroundColor: BrailColors.backgroundColor,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
        child: Column(crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text('Departure dates'),
            SizedBox(height: 15,),
            Row(
              children: [
                Expanded(
                  child: Container(decoration: BoxDecoration(
                      color: BrailColors.textFieldGrey,
                      borderRadius: BorderRadius.circular(8)
                  ),
                    child: TextFormField(
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(horizontal: 10),
                          hintText: 'Start date',
                          border: InputBorder.none
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 20,),
                Expanded(
                  child: Container(decoration: BoxDecoration(
                      color: BrailColors.textFieldGrey,
                      borderRadius: BorderRadius.circular(8)
                  ),
                    child: TextFormField(
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(horizontal: 10),
                          hintText: 'End date',
                          border: InputBorder.none
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 15,),
            Text('Destinations'),
            SizedBox(height: 15,),
            Container(decoration: BoxDecoration(
                color: BrailColors.textFieldGrey,
                borderRadius: BorderRadius.circular(8)
            ),
              child: TextFormField(
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(horizontal: 10),
                    hintText: 'Destination from',
                    border: InputBorder.none
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(decoration: BoxDecoration(
                color: BrailColors.textFieldGrey,
                borderRadius: BorderRadius.circular(8)
            ),
              child: TextFormField(
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(horizontal: 10),
                    hintText: 'Destination to',
                    border: InputBorder.none
                ),
              ),
            ),
            SizedBox(height: 15,),
            Icon(Icons.add),
            Text('Dimensions (meter)'),
            SizedBox(height: 15,),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(width: 100,
                  decoration: BoxDecoration(
                      color: BrailColors.textFieldGrey,
                      borderRadius: BorderRadius.circular(8)
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(contentPadding: EdgeInsets.symmetric(horizontal: 10),
                        hintText: 'Width',
                        border: InputBorder.none
                    ),
                  ),
                ),Container(width: 100,
                  decoration: BoxDecoration(
                      color: BrailColors.textFieldGrey,
                      borderRadius: BorderRadius.circular(8)
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(horizontal: 10),
                        hintText: 'Height',
                        border: InputBorder.none
                    ),
                  ),
                ),Container(width: 100,
                  decoration: BoxDecoration(
                      color: BrailColors.textFieldGrey,
                      borderRadius: BorderRadius.circular(8)
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(horizontal: 10),
                        hintText: 'lenght',
                        border: InputBorder.none
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 15,),
            Text('Available weight (t)'),
            SizedBox(height: 15,),
            Container(width: 100,
              decoration: BoxDecoration(
                  color: BrailColors.textFieldGrey,
                  borderRadius: BorderRadius.circular(8)
              ),
              child: TextFormField(
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(horizontal: 10),
                    hintText: 'Lenght',
                    border: InputBorder.none
                ),
              ),
            ),
            Spacer(),
            Container(
              height: 55,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: BrailColors.backgroundColor),
                  onPressed: () {
                  },
                  child: Text(
                    'Publish',
                    style: TextStyle(
                        color: BrailColors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
