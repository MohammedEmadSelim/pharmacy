import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:pharmacy_app/database/firestore.dart';
import 'package:pharmacy_app/screens/colors.dart';
//upload data to database
class WriteScreen extends StatelessWidget {
  final String titleApp;

  TextEditingController medicineName = TextEditingController();
  TextEditingController medicineId = TextEditingController();
  TextEditingController medicineDate = TextEditingController();

  WriteScreen({super.key, required this.titleApp});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: whiteGreen,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text(titleApp),
            backgroundColor: yellow,
          ),
          body: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  right: 20,
                  left: 20,
                ),
                child: TextField(
                  cursorColor: black,
                  controller: medicineId,
                  decoration: InputDecoration(
                    label: Text('Medicine Id'),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12)),
                    fillColor: Colors.white,
                    filled: true,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  right: 20,
                  left: 20,
                ),
                child: TextField(
                  cursorColor: black,
                  controller: medicineName,
                  decoration: InputDecoration(
                    label: const Text('Medicine Name'),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12)),
                    fillColor: Colors.white,
                    filled: true,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  right: 20,
                  left: 20,
                ),
                child: TextField(
                  cursorColor: black,
                  controller: medicineDate,
                  decoration: InputDecoration(
                    label: const Text('Medicine input date'),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12)),
                    fillColor: Colors.white,
                    filled: true,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 100,
                height: 40,
                child: FloatingActionButton(
                  child: Text('Add'),
                  backgroundColor: yellow,
                  onPressed: () {
                    createMedicine(medicineName.text,medicineId.text);
                  },
                ),
              )
            ],
          ),
          backgroundColor: whiteGreen,
        ),
      ),
    );
  }
}
