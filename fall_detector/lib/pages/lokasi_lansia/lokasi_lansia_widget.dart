// import 'package:fall_detector/models/model_sensor.dart';
// import 'package:firebase_database/firebase_database.dart';
// import 'package:flutter/material.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';
// import 'package:url_launcher/url_launcher.dart';

// class LokasiLansia extends StatefulWidget {
//   @override
//   _LokasiLansiaState createState() => _LokasiLansiaState();
// }

// class _LokasiLansiaState extends State<LokasiLansia> {
//   DatabaseReference _databaseReference;
//   SensorDeteksi sensorDeteksi;

//   @override
//   void initState() {
//     super.initState();
//     // Inisialisasi referensi ke Firebase Realtime Database
//     _databaseReference =
//         FirebaseDatabase.instance.reference().child("data/sensor_deteksi");
//     getSensorDeteksi();
//   }

//   // Fungsi untuk mengambil data sensor deteksi dari Firebase Realtime Database
//   void getSensorDeteksi() {
//     _databaseReference.once().then((DataSnapshot snapshot) {
//       setState(() {
//         sensorDeteksi = SensorDeteksi.fromJson(snapshot.value);
//       });
//     });
//   }

//   // Fungsi untuk mengarahkan pengguna ke Google Maps
//   void openGoogleMaps() async {
//     if (sensorDeteksi != null) {
//       // Buka Google Maps dengan latitude dan longitude yang dinamis
//       final url =
//           "https://www.google.com/maps/@${sensorDeteksi.latitude},${sensorDeteksi.longitude},18z";
//       if (await canLaunch(url)) {
//         await launch(url);
//       } else {
//         print("Tidak dapat membuka Google Maps.");
//       }
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Arahkan ke Google Maps"),
//       ),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: openGoogleMaps,
//           child: Text("Arahkan ke Google Maps"),
//         ),
//       ),
//     );
//   }
// }

// void main() async {
//   runApp(MaterialApp(home: LokasiLansia()));
// }

// class LokasiLansia extends StatefulWidget {
//   @override
//   State<LokasiLansia> createState() => MapSampleState();
// }

// class MapSampleState extends State<LokasiLansia> {
//   late GoogleMapController mapController;

//   final LatLng _center =
//       const LatLng(37.7749, -122.4194); // Koordinat tengah untuk San Francisco

//   void _onMapCreated(GoogleMapController controller) {
//     mapController = controller;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Google Maps Example'),
//       ),
//       body: GoogleMap(
//         onMapCreated: _onMapCreated,
//         initialCameraPosition: CameraPosition(
//           target: _center,
//           zoom: 12.0, // Zoom awal
//         ),
//       ),
//     );
//   }
// }

// class LokasiLansia extends StatefulWidget {
//   final double? latitude;
//   final double? longitude;

//   LokasiLansia({this.latitude, this.longitude});

//   @override
//   _MapsScreenState createState() => _MapsScreenState();
// }

// class _MapsScreenState extends State<LokasiLansia> {
//   GoogleMapController? mapController;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Peta Lokasi'),
//       ),
//       body: GoogleMap(
//         initialCameraPosition: CameraPosition(
//           target: LatLng(widget.latitude ?? 0, widget.longitude ?? 0),
//           zoom: 30.0, // Atur level zoom sesuai kebutuhan Anda
//         ),
//         onMapCreated: (GoogleMapController controller) {
//           mapController = controller;
//         },
//         markers: <Marker>[
//           Marker(
//             markerId: MarkerId('markerId'),
//             position: LatLng(widget.latitude ?? 0, widget.longitude ?? 0),
//             infoWindow: InfoWindow(title: 'Lokasi Anda'),
//           ),
//         ].toSet(),
//       ),
//     );
//   }
// }

// class LokasiLansia extends StatefulWidget {
//   @override
//   _LokasiLansiaState createState() => _LokasiLansiaState();
// }

// class _LokasiLansiaState extends State<LokasiLansia> {
//   SensorDeteksi? _sensorDeteksi;

//   @override
//   void initState() {
//     super.initState();
//     FirebaseDatabase.instance.ref('sensor').onValue.listen((event) {
//       final data = event.snapshot.value;
//       if (data != null) {
//         try {
//           _sensorDeteksi = SensorDeteksi.fromJson(data as Map);
//         } catch (error) {
//           print(error);
//         }
//       }

//       // Periksa apakah _sensorDeteksi bernilai null
//       if (_sensorDeteksi != null) {
//         // Lakukan sesuatu dengan _sensorDeteksi
//         // Contoh:
//         print(_sensorDeteksi?.sensor?.sensorGps?.latitude);
//         print(_sensorDeteksi?.sensor?.sensorGps?.longitude);
//         print(_sensorDeteksi);
//       }

//       setState(() {});
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     if (_sensorDeteksi == null) {
//       return Scaffold(
//         appBar: AppBar(
//           title: Text('Lokasi Lansia'),
//         ),
//         body: Center(
//           child: CircularProgressIndicator(),
//         ),
//       );
//     }

//     final latitude = _sensorDeteksi!.sensor!.sensorGps!.latitude;
//     final longitude = _sensorDeteksi!.sensor!.sensorGps!.longitude;

//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Lokasi Lansia'),
//       ),
//       body: GoogleMap(
//         initialCameraPosition: CameraPosition(
//           target: LatLng(latitude!, longitude!), // Koordinat awal peta
//           zoom: 15.0, // Level zoom awal
//         ),
//         markers: {
//           Marker(
//             markerId: MarkerId('marker_id'),
//             position: LatLng(latitude, longitude),
//             infoWindow: InfoWindow(
//               title: 'Lokasi Lansia',
//               snippet: 'Ini adalah lokasi lansia.',
//             ),
//           ),
//         },
//       ),
//     );
//   }
// }
