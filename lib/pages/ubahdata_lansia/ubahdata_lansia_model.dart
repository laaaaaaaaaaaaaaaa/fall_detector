import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';

class UbahdataLansiaModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for NamaLansiaFieldUpdate widget.
  TextEditingController? namaLansiaFieldUpdateController;
  String? Function(BuildContext, String?)?
      namaLansiaFieldUpdateControllerValidator;
  // State field(s) for UmurLansiaFieldUpdate widget.
  TextEditingController? umurLansiaFieldUpdateController;
  String? Function(BuildContext, String?)?
      umurLansiaFieldUpdateControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    namaLansiaFieldUpdateController?.dispose();
    umurLansiaFieldUpdateController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
