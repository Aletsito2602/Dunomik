import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'only_crm_widget.dart' show OnlyCrmWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class OnlyCrmModel extends FlutterFlowModel<OnlyCrmWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for Server_Account widget.
  FocusNode? serverAccountFocusNode;
  TextEditingController? serverAccountTextController;
  String? Function(BuildContext, String?)? serverAccountTextControllerValidator;
  // State field(s) for password_acc widget.
  FocusNode? passwordAccFocusNode;
  TextEditingController? passwordAccTextController;
  String? Function(BuildContext, String?)? passwordAccTextControllerValidator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController4;
  String? Function(BuildContext, String?)? textController4Validator;
  // State field(s) for DropDown widget.
  String? dropDownValue1;
  FormFieldController<String>? dropDownValueController1;
  // State field(s) for DropDown widget.
  String? dropDownValue2;
  FormFieldController<String>? dropDownValueController2;
  // State field(s) for DropDown widget.
  String? dropDownValue3;
  FormFieldController<String>? dropDownValueController3;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    serverAccountFocusNode?.dispose();
    serverAccountTextController?.dispose();

    passwordAccFocusNode?.dispose();
    passwordAccTextController?.dispose();

    textFieldFocusNode2?.dispose();
    textController4?.dispose();
  }
}
