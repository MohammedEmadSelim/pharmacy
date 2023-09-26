import 'package:cloud_firestore/cloud_firestore.dart';

class FirebaseFuns {
  String? medicineName;
  String? id;

  FirebaseFuns({
    this.medicineName,
    this.id,
  });

  FirebaseFuns fromMap(Map<String, dynamic> mapData) {
    return FirebaseFuns(medicineName: mapData['name'], id: mapData['id']);
  }
}
 //upload data function 
createMedicine(String MedicineName, String medicineId) {
  final fireStoreRef = FirebaseFirestore.instance.collection('medicines');
  fireStoreRef.doc(medicineId).set({
    'name': MedicineName,
    'id': medicineId,
    'quantity': 3,
    'text': "done",
    'date': DateTime.now()
  });
}
//getting data function 
Stream<List<FirebaseFuns>> getMedicins() {
  var ref = FirebaseFirestore.instance.collection('medicines');
  var data = ref.snapshots().map(
        (event) => event.docs
            .map(
              (e) => FirebaseFuns().fromMap(e.data()),
            )
            .toList(),
      );
  return data;
}
