import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HomeScreenProvider extends ChangeNotifier {
  // ============= Car Manufacturer Select for Admin View Screen============== //
  String selectedManufacturer = "";
  void chooseManufacturer(value) {
    selectedManufacturer = value;
    notifyListeners();
  }

  // ============= Car Model Select for Admin View Screen============== //
  String selectedModel = "";
  void chooseModel(value) {
    selectedModel = value;
    notifyListeners();
  }

  // ============= Car Model year Select for Admin View Screen============== //
  String selectedYear = "";
  void chooseYear(value) {
    selectedYear = value;
    notifyListeners();
  }

  // ============= Vehicle Receive Date for Booking Reservation Admin View Screen============== //
  String selectReceiveDate = "Select Receive Date";
  void receiveDate(value) {
    selectReceiveDate = DateFormat('dd-MM-yyyy').format(value);
    notifyListeners();
  }

  int timestapReceiveDate = 0;

  void receiveTimestamp(value) {
    timestapReceiveDate = value.millisecondsSinceEpoch;
    notifyListeners();
  }

  // ============= Vehicle Delivery Date for Booking Reservation Admin View Screen============== //
  String selectDeliveryDate = "Select Delivery Date";
  void deliveryDate(value) {
    selectDeliveryDate = DateFormat('dd-MM-yyyy').format(value);
    notifyListeners();
  }

  int timestapDeliveryDate = 0;

  void deliveryTimestamp(value) {
    timestapDeliveryDate = value.millisecondsSinceEpoch;
    notifyListeners();
  }

  // ============= Mechanic Selection for Booking Reservation Admin View Screen============== //
  String selectedMechanic = "";
  void chooseMechanic(value) {
    selectedMechanic = value;
    notifyListeners();
  }
}
