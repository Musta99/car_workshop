class ServiceBookingModel {
  final String vehicleMake;
  final String vehicleModel;
  final String vehicleYear;
  final String vehicleregistrationNumber;
  final String customerName;
  final String customerPhone;
  final String customerEmail;
  final String bookingTitle;
  final String receiveFormattedDate;
  final int receiveTimestampDate;
  final String deliveryFormattedDate;
  final int deliveryTimestampDate;
  final String assignedMechanic;
  final String mechanicUID;

  ServiceBookingModel({
    required this.vehicleMake,
    required this.vehicleModel,
    required this.vehicleYear,
    required this.vehicleregistrationNumber,
    required this.customerName,
    required this.customerPhone,
    required this.customerEmail,
    required this.bookingTitle,
    required this.receiveFormattedDate,
    required this.receiveTimestampDate,
    required this.deliveryFormattedDate,
    required this.deliveryTimestampDate,
    required this.assignedMechanic,
    required this.mechanicUID,
  });

  Map<String, dynamic> toJson() => {
        "vehicleMake": vehicleMake,
        "vehicleModel": vehicleModel,
        "vehicleYear": vehicleYear,
        "vehicleregistrationNumber": vehicleregistrationNumber,
        "customerName": customerName,
        "customerPhone": customerPhone,
        "customerEmail": customerEmail,
        "bookingTitle": bookingTitle,
        "receiveFormattedDate": receiveFormattedDate,
        "receiveTimestampDate": receiveTimestampDate,
        "deliveryFormattedDate": deliveryFormattedDate,
        "deliveryTimestampDate": deliveryTimestampDate,
        "assignedMechanic": assignedMechanic,
        "mechanicUID": mechanicUID,
      };
}
