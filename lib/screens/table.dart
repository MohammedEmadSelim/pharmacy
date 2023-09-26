import 'package:flutter/material.dart';
import 'package:pharmacy_app/database/firestore.dart';
import 'package:pharmacy_app/screens/colors.dart';
// drawing table 
class TableTest extends StatelessWidget {
  List<FirebaseFuns> listOfdata;
  TextStyle? tableFont = const TextStyle(fontSize: 30);
  TableTest(this.listOfdata, {super.key});
 

  @override
  Widget build(BuildContext context) {
    return
        // this container used to make safe area back ground lightGreen
        Container(
      color: whiteGreen,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: whiteGreen,
          body: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all()),
                  // this row for making the display arrengment
                  child: const Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        'Id',
                        style: TextStyle(fontSize: 30),
                      ),
                      SizedBox(
                        height: 30,
                        width: 130,
                      ),
                      Text(
                        'Name',
                        style: TextStyle(fontSize: 30),
                      ),
                    ],
                  ),
                ),
                //this list to display the content from Firebase
                ListView.builder(
                  physics: BouncingScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) => Column(
                    children: [
                      Row(
                        children: [
                          const SizedBox(width: 30),
                          Text(
                            '${listOfdata[index].id}',
                            style: tableFont,
                          ),
                          const SizedBox(width: 100),
                          Text(
                            '${listOfdata[index].medicineName}',
                            style: tableFont,
                          ),
                        ],
                      ),
                      const Divider(
                        color: black,
                        height: 2,
                        thickness: 2,
                      )
                    ],
                  ),
                  itemCount: listOfdata.length,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
