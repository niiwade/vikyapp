import '/flutter_flow/flutter_flow_util.dart';
import '/pages/product_car/product_car_widget.dart';
import 'store_widget.dart' show StoreWidget;
import 'package:flutter/material.dart';

class StoreModel extends FlutterFlowModel<StoreWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for ProductCar component.
  late ProductCarModel productCarModel1;
  // Model for ProductCar component.
  late ProductCarModel productCarModel2;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    productCarModel1 = createModel(context, () => ProductCarModel());
    productCarModel2 = createModel(context, () => ProductCarModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    productCarModel1.dispose();
    productCarModel2.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
