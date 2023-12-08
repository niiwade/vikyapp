import '/flutter_flow/flutter_flow_util.dart';
import '/pages/toplabs/toplabs_widget.dart';
import 'alllabs_widget.dart' show AlllabsWidget;
import 'package:flutter/material.dart';

class AlllabsModel extends FlutterFlowModel<AlllabsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for Toplabs component.
  late ToplabsModel toplabsModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    toplabsModel = createModel(context, () => ToplabsModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    toplabsModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
