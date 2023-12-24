import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'ubahdata_lansia_model.dart';
export 'ubahdata_lansia_model.dart';

class UbahdataLansiaWidget extends StatefulWidget {
  const UbahdataLansiaWidget({Key? key}) : super(key: key);

  @override
  _UbahdataLansiaWidgetState createState() => _UbahdataLansiaWidgetState();
}

class _UbahdataLansiaWidgetState extends State<UbahdataLansiaWidget> {
  late UbahdataLansiaModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  static DateTime selectedDay = DateTime.now();
  String selectedBirthDay = DateFormat('EEE, d/M/y', 'id').format(selectedDay);

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UbahdataLansiaModel());

    _model.namaLansiaFieldUpdateController ??= TextEditingController();
    _model.tanggalLahirFieldUpdateController ??= TextEditingController();
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).success,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: Colors.white,
              size: 30.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          title: Text(
            'Ubah Informasi Lansia',
            textAlign: TextAlign.center,
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Outfit',
                  color: Colors.white,
                  fontSize: 25.0,
                  fontWeight: FontWeight.w500,
                ),
          ),
          actions: [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Container(
            width: MediaQuery.sizeOf(context).width * 1.0,
            height: MediaQuery.sizeOf(context).height * 1.0,
            decoration: BoxDecoration(
              color: Color(0xFFF1F4F8),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                ListView(
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(13.0, 0.0, 13.0, 0.0),
                      child: Container(
                        width: 100.0,
                        height: 292.0,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(15.0),
                            bottomRight: Radius.circular(15.0),
                            topLeft: Radius.circular(0.0),
                            topRight: Radius.circular(0.0),
                          ),
                          border: Border.all(
                            color: Color(0x969AAAB2),
                            width: 3.0,
                          ),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            ListView(
                              padding: EdgeInsets.zero,
                              shrinkWrap: true,
                              scrollDirection: Axis.vertical,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      15.0, 30.0, 0.0, 5.0),
                                  child: Text(
                                    'Ubah Data Lansia',
                                    style:
                                        FlutterFlowTheme.of(context).titleLarge,
                                  ),
                                ),
                              ],
                            ),
                            ListView(
                              padding: EdgeInsets.zero,
                              shrinkWrap: true,
                              scrollDirection: Axis.vertical,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      15.0, 5.0, 15.0, 5.0),
                                  child: TextFormField(
                                    controller:
                                        _model.namaLansiaFieldUpdateController,
                                    autofocus: true,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      labelText: 'Nama',
                                      labelStyle: FlutterFlowTheme.of(context)
                                          .labelMedium,
                                      hintStyle: FlutterFlowTheme.of(context)
                                          .labelMedium,
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x969AAAB2),
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .success,
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .success,
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .success,
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      prefixIcon: Icon(
                                        Icons.person,
                                        color: FlutterFlowTheme.of(context)
                                            .success,
                                        size: 22.0,
                                      ),
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          color: Colors.black,
                                        ),
                                    validator: _model
                                        .namaLansiaFieldUpdateControllerValidator
                                        .asValidator(context),
                                  ),
                                ),
                              ],
                            ),
                            ListView(
                              padding: EdgeInsets.zero,
                              shrinkWrap: true,
                              scrollDirection: Axis.vertical,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      15.0, 5.0, 15.0, 5.0),
                                  child: TextFormField(
                                    onTap: () {
                                      showDatePicker(
                                        context: context,
                                        initialDate:
                                            currentUserDocument!.tanggalLahir!,
                                        firstDate: DateTime(1800),
                                        lastDate: DateTime(
                                          DateTime.now().year,
                                          12,
                                          31,
                                        ),
                                      ).then(
                                        (value) {
                                          setState(() {
                                            if (value != null) {
                                              selectedDay = value;
                                              _model
                                                  .tanggalLahirFieldUpdateController
                                                  .text = DateFormat(
                                                      'd MMMM y', 'id')
                                                  .format(value);
                                            } else {
                                              selectedDay = DateTime.now();
                                              _model
                                                  .tanggalLahirFieldUpdateController
                                                  .text = "";
                                            }
                                          });
                                        },
                                      );
                                    },
                                    controller: _model
                                        .tanggalLahirFieldUpdateController,
                                    autofocus: true,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      labelText: 'Umur',
                                      labelStyle: FlutterFlowTheme.of(context)
                                          .labelMedium,
                                      hintStyle: FlutterFlowTheme.of(context)
                                          .labelMedium,
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x969AAAB2),
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .success,
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .success,
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .success,
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      prefixIcon: Icon(
                                        Icons.folder_shared,
                                        color: FlutterFlowTheme.of(context)
                                            .success,
                                        size: 22.0,
                                      ),
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          color: Colors.black,
                                        ),
                                    keyboardType: TextInputType.number,
                                    validator: _model
                                        .umurLansiaFieldUpdateControllerValidator
                                        .asValidator(context),
                                  ),
                                ),
                              ],
                            ),
                            ListView(
                              padding: EdgeInsets.zero,
                              shrinkWrap: true,
                              scrollDirection: Axis.vertical,
                              children: [
                                ListView(
                                  padding: EdgeInsets.zero,
                                  shrinkWrap: true,
                                  scrollDirection: Axis.vertical,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          45.0, 5.0, 40.0, 25.0),
                                      child: FFButtonWidget(
                                        onPressed: () async {
                                          await currentUserReference!
                                              .update(createUsersRecordData(
                                            namaLansia: _model
                                                        .namaLansiaFieldUpdateController
                                                        .text ==
                                                    ""
                                                ? currentUserDocument!
                                                    .namaLansia
                                                : _model
                                                    .namaLansiaFieldUpdateController
                                                    .text,
                                            tanggalLahir:
                                                _model.tanggalLahirFieldUpdateController
                                                            .text ==
                                                        ""
                                                    ? currentUserDocument!
                                                        .tanggalLahir!
                                                    : selectedDay,
                                          ));

                                          context.pushNamed('UserPage');
                                        },
                                        text: 'Simpan',
                                        options: FFButtonOptions(
                                          height: 45.0,
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  15.0, 0.0, 15.0, 0.0),
                                          iconPadding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 0.0),
                                          color: FlutterFlowTheme.of(context)
                                              .success,
                                          textStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleSmall
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    color: Colors.white,
                                                  ),
                                          elevation: 3.0,
                                          borderSide: BorderSide(
                                            color: Colors.transparent,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
