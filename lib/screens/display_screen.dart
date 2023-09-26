import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:pharmacy_app/database/firestore.dart';
import 'package:pharmacy_app/screens/colors.dart';
import 'package:pharmacy_app/screens/table.dart';

class DisplayScreen extends StatelessWidget {
  final String title;

  DisplayScreen({required this.title});

 
  @override
  Widget build(BuildContext context) {
    //diplaying from database
    return StreamBuilder(
      stream: getMedicins(),
      builder: (BuildContext context, snapshot) {

      if(snapshot.hasData){
        return
         Container(
        color: whiteGreen,
        child: SafeArea(
          child: Scaffold(
            appBar: AppBar(
              title: Text(this.title),
            ),
            backgroundColor: whiteGreen,
            body: Padding(
              padding: const EdgeInsets.all(20),
                       child: TableTest(snapshot.data!),

            ),
          ),
        ),
      );

      }
         return Scaffold();
      }
    );
  }
}
