import 'package:firebase_database/firebase_database.dart';

class MyService {
  Future<String> updateStatusMpu(String value) async {
    try {
      DatabaseReference ref =
          FirebaseDatabase.instance.ref("Sensors/Sensor Mpu/Status");
      await ref.update({
        "StatusMpu": value,
      });
      return value;
    } catch (e) {
      rethrow;
    }
  }
}
