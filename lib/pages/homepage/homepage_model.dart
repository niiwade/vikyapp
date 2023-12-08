import '/flutter_flow/flutter_flow_util.dart';
import '/pages/booking_appointment/booking_appointment_widget.dart';
import '/pages/doctorsnearby/doctorsnearby_widget.dart';
import '/pages/product_car/product_car_widget.dart';
import '/pages/top_pharmacies/top_pharmacies_widget.dart';
import '/pages/toplabs/toplabs_widget.dart';
import 'homepage_widget.dart' show HomepageWidget;
import 'package:flutter/material.dart';

class HomepageModel extends FlutterFlowModel<HomepageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for searchBar widget.
  FocusNode? searchBarFocusNode;
  TextEditingController? searchBarController;
  String? Function(BuildContext, String?)? searchBarControllerValidator;
  // Model for BookingAppointment component.
  late BookingAppointmentModel bookingAppointmentModel;
  // Model for doctorsnearby component.
  late DoctorsnearbyModel doctorsnearbyModel;
  // Model for Toplabs component.
  late ToplabsModel toplabsModel;
  // Model for TopPharmacies component.
  late TopPharmaciesModel topPharmaciesModel;
  // Model for ProductCar component.
  late ProductCarModel productCarModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    bookingAppointmentModel =
        createModel(context, () => BookingAppointmentModel());
    doctorsnearbyModel = createModel(context, () => DoctorsnearbyModel());
    toplabsModel = createModel(context, () => ToplabsModel());
    topPharmaciesModel = createModel(context, () => TopPharmaciesModel());
    productCarModel = createModel(context, () => ProductCarModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    searchBarFocusNode?.dispose();
    searchBarController?.dispose();

    bookingAppointmentModel.dispose();
    doctorsnearbyModel.dispose();
    toplabsModel.dispose();
    topPharmaciesModel.dispose();
    productCarModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
