import '/flutter_flow/flutter_flow_util.dart';
import '/pages/top_pharmacies/top_pharmacies_widget.dart';
import 'allpharmacies_widget.dart' show AllpharmaciesWidget;
import 'package:flutter/material.dart';

class AllpharmaciesModel extends FlutterFlowModel<AllpharmaciesWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for TopPharmacies component.
  late TopPharmaciesModel topPharmaciesModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    topPharmaciesModel = createModel(context, () => TopPharmaciesModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    topPharmaciesModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
