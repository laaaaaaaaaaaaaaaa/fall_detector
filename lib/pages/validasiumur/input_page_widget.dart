import '/auth/firebase_auth/auth_util.dart';
import 'package:intl/intl.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'input_page_model.dart';
export 'input_page_model.dart';

class InputPageWidget extends StatefulWidget {
  const InputPageWidget({Key? key}) : super(key: key);

  @override
  _LoginPageWidgetState createState() => _LoginPageWidgetState();
}

class _LoginPageWidgetState extends State<InputPageWidget> {
  final _tanggalLahirController = TextEditingController();

  late InputPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Input Tanggal Lahir'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _tanggalLahirController,
              decoration: InputDecoration(
                labelText: 'Tanggal Lahir',
                hintText: 'dd-MM-yyyy',
              ),
              keyboardType: TextInputType.datetime,
            ),
            ElevatedButton(
              onPressed: () {
                // Simpan data input
                DateTime tanggalLahir = DateFormat('dd-MM-yyyy')
                    .parse(_tanggalLahirController.text);
                var umur = ValidUmur.hitungUmur(tanggalLahir);

                // Kirim data input ke halaman output
                Navigator.of(context).pushNamed('OutputPage', arguments: {
                  'tanggalLahir': _tanggalLahirController.text.toString(),
                  'umur': umur,
                });
              },
              child: Text('Simpan'),
            ),
          ],
        ),
      ),
    );
  }
}

class ValidUmur {
  static int hitungUmur(DateTime tanggalLahir) {
    // Melakukan validasi tanggal lahir
    if (tanggalLahir == null) {
      return 0;
    }

    DateTime today = DateTime.now();
    var umur = today.difference(tanggalLahir).inDays ~/ 365;

    // Mengecek apakah umur kurang dari 0
    if (umur < 0) {
      return 0;
    }

    return umur;
  }
}
