import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCluCynP5G1a_ISHYW6UXfoN81ZwGeoNb4",
            authDomain: "falldetector-98d21.firebaseapp.com",
            projectId: "falldetector-98d21",
            storageBucket: "falldetector-98d21.appspot.com",
            messagingSenderId: "976382816729",
            appId: "1:976382816729:web:6194f4e5bb8246f210e9c8",
            measurementId: "G-Q1HPYS1ZTB"));
  } else {
    await Firebase.initializeApp();
  }
}
