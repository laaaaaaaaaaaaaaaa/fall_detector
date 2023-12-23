import 'package:flutter/material.dart';
import 'input_page_model.dart';
import 'input_page_widget.dart';

class OutputPageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> data =
        ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>;

    final String tanggalLahir = data['tanggalLahir'];
    final int umur = data['umur'];

    return Scaffold(
      appBar: AppBar(
        title: Text('Output'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Tanggal Lahir: $tanggalLahir',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            Text(
              'Umur: $umur tahun',
              style: TextStyle(fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}
