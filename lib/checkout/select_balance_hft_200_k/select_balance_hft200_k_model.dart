import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/side_bar_nav/side_bar_nav_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'select_balance_hft200_k_widget.dart' show SelectBalanceHft200KWidget;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SelectBalanceHft200KModel
    extends FlutterFlowModel<SelectBalanceHft200KWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey2 = GlobalKey<FormState>();
  final formKey1 = GlobalKey<FormState>();
  // Model for sideBarNav component.
  late SideBarNavModel sideBarNavModel;
  // State field(s) for TabBar widget.
  TabController? tabBarController1;
  int get tabBarCurrentIndex1 =>
      tabBarController1 != null ? tabBarController1!.index : 0;

  // State field(s) for TabBar widget.
  TabController? tabBarController2;
  int get tabBarCurrentIndex2 =>
      tabBarController2 != null ? tabBarController2!.index : 0;

  // State field(s) for DropDown_platform widget.
  String? dropDownPlatformValue;
  FormFieldController<String>? dropDownPlatformValueController;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  String? _textController1Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for DropDown_plattform_res widget.
  String? dropDownPlattformResValue;
  FormFieldController<String>? dropDownPlattformResValueController;
  // State field(s) for TextField_responsive widget.
  FocusNode? textFieldResponsiveFocusNode;
  TextEditingController? textFieldResponsiveTextController;
  String? Function(BuildContext, String?)?
      textFieldResponsiveTextControllerValidator;
  String? _textFieldResponsiveTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    sideBarNavModel = createModel(context, () => SideBarNavModel());
    textController1Validator = _textController1Validator;
    textFieldResponsiveTextControllerValidator =
        _textFieldResponsiveTextControllerValidator;
  }

  @override
  void dispose() {
    sideBarNavModel.dispose();
    tabBarController1?.dispose();
    tabBarController2?.dispose();
    textFieldFocusNode?.dispose();
    textController1?.dispose();

    textFieldResponsiveFocusNode?.dispose();
    textFieldResponsiveTextController?.dispose();
  }
}
