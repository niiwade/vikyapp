import '/flutter_flow/flutter_flow_util.dart';
import '/pages/booking_appointment/booking_appointment_widget.dart';
import 'appointments_widget.dart' show AppointmentsWidget;
import 'package:flutter/material.dart';

class AppointmentsModel extends FlutterFlowModel<AppointmentsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for searchBar widget.
  FocusNode? searchBarFocusNode;
  TextEditingController? searchBarController;
  String? Function(BuildContext, String?)? searchBarControllerValidator;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // Model for BookingAppointment component.
  late BookingAppointmentModel bookingAppointmentModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    bookingAppointmentModel =
        createModel(context, () => BookingAppointmentModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    searchBarFocusNode?.dispose();
    searchBarController?.dispose();

    tabBarController?.dispose();
    bookingAppointmentModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
