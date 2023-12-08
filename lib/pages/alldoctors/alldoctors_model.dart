import '/flutter_flow/flutter_flow_util.dart';
import '/pages/doctorsnearby/doctorsnearby_widget.dart';
import 'alldoctors_widget.dart' show AlldoctorsWidget;
import 'package:flutter/material.dart';

class AlldoctorsModel extends FlutterFlowModel<AlldoctorsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for doctorsnearby component.
  late DoctorsnearbyModel doctorsnearbyModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    doctorsnearbyModel = createModel(context, () => DoctorsnearbyModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    doctorsnearbyModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
