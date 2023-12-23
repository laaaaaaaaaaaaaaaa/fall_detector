import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';

class SignUpPageModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for UsernameField widget.
  TextEditingController? usernameFieldController;
  String? Function(BuildContext, String?)? usernameFieldControllerValidator;
  // State field(s) for EmailField widget.
  TextEditingController? emailFieldController;
  String? Function(BuildContext, String?)? emailFieldControllerValidator;
  // State field(s) for NamaLansiaField widget.
  TextEditingController? namaLansiaFieldController;
  String? Function(BuildContext, String?)? namaLansiaFieldControllerValidator;
  // State field(s) for UmurLansiaField widget.
  TextEditingController? umurLansiaFieldController;
  String? Function(BuildContext, String?)? umurLansiaFieldControllerValidator;
  // State field(s) for PasswordField widget.
  TextEditingController? passwordFieldController;
  late bool passwordFieldVisibility;
  String? Function(BuildContext, String?)? passwordFieldControllerValidator;
  // State field(s) for Re-enterPasswordField widget.
  TextEditingController? reEnterPasswordFieldController;
  late bool reEnterPasswordFieldVisibility;
  String? Function(BuildContext, String?)?
      reEnterPasswordFieldControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    passwordFieldVisibility = false;
    reEnterPasswordFieldVisibility = false;
  }

  void dispose() {
    unfocusNode.dispose();
    usernameFieldController?.dispose();
    emailFieldController?.dispose();
    namaLansiaFieldController?.dispose();
    umurLansiaFieldController?.dispose();
    passwordFieldController?.dispose();
    reEnterPasswordFieldController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
