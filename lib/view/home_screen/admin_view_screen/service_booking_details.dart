import 'package:car_workshop/utils/app_colors.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class ServiceBookingDetails extends StatelessWidget {
  final QueryDocumentSnapshot<Map<String, dynamic>> snapShot;
  ServiceBookingDetails({
    Key? key,
    required this.snapShot,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Expanded(
          child: Container(
            margin: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.height * 0.02,
            ),
            child: Container(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Icon(
                            FontAwesomeIcons.chevronLeft,
                            size: MediaQuery.of(context).size.height * 0.02,
                          ),
                        ),
                        Text(
                          "Reservation Details",
                          style: GoogleFonts.roboto(
                            fontSize:
                                MediaQuery.of(context).size.height * 0.025,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Icon(
                          FontAwesomeIcons.chevronLeft,
                          color: Colors.transparent,
                        )
                      ],
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.3,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/images/vehicle.png"),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.025,
                    ),
                    // =============> Vehicle Issue <=================
                    Container(
                        child: Text(
                      snapShot["bookingTitle"],
                      textAlign: TextAlign.start,
                      style: GoogleFonts.roboto(
                          fontSize: MediaQuery.of(context).size.height * 0.025),
                    )),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.025,
                    ),
                    // ===========> Vehicle Details <====================
                    Container(
                      width: MediaQuery.of(context).size.width,
                      color: AppColor().commonColor.withOpacity(0.4),
                      child: Padding(
                        padding: EdgeInsets.all(15),
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Vehicle Details",
                                style: GoogleFonts.roboto(
                                    fontWeight: FontWeight.w600,
                                    fontSize:
                                        MediaQuery.of(context).size.height *
                                            0.021),
                              ),
                            ),
                            SizedBox(
                              height:
                                  MediaQuery.of(context).size.height * 0.015,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(6),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Column(
                                  children: [
                                    // Vehicle Make ------------------------>
                                    ReUsableRow(
                                        title: "Vehicle Make: ",
                                        dataValue: snapShot["vehicleMake"]),
                                    // Vehicle Model ------------------------>
                                    ReUsableRow(
                                        title: "Vehicle Model: ",
                                        dataValue: snapShot["vehicleModel"]),
                                    // Vehicle Model Year ------------------------>
                                    ReUsableRow(
                                        title: "Vehicle Model Year:",
                                        dataValue: snapShot["vehicleYear"]),
                                    // Vehicle Registration Number ------------------------>
                                    ReUsableRow(
                                        title: "Registration Number:",
                                        dataValue: snapShot[
                                            "vehicleregistrationNumber"])
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.025,
                    ),

                    // ===========> Customer Details <====================
                    Container(
                      width: MediaQuery.of(context).size.width,
                      color: AppColor().commonColor.withOpacity(0.4),
                      child: Padding(
                        padding: EdgeInsets.all(15),
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Customer Details",
                                style: GoogleFonts.roboto(
                                    fontWeight: FontWeight.w600,
                                    fontSize:
                                        MediaQuery.of(context).size.height *
                                            0.021),
                              ),
                            ),
                            SizedBox(
                              height:
                                  MediaQuery.of(context).size.height * 0.015,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(6),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Column(
                                  children: [
                                    // Vehicle Make ------------------------>
                                    ReUsableRow(
                                        title: "Customer Name: ",
                                        dataValue: snapShot["customerName"]),
                                    // Vehicle Model ------------------------>
                                    ReUsableRow(
                                        title: "Customer Phone: ",
                                        dataValue: snapShot["customerPhone"]),
                                    // Vehicle Model Year ------------------------>
                                    ReUsableRow(
                                        title: "Customer Email: ",
                                        dataValue: snapShot["customerEmail"]),
                                    // Vehicle Registration Number ------------------------>
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.025,
                    ),

                    // ===========> Other Details <====================
                    Container(
                      width: MediaQuery.of(context).size.width,
                      color: AppColor().commonColor.withOpacity(0.4),
                      child: Padding(
                        padding: EdgeInsets.all(15),
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Other Details",
                                style: GoogleFonts.roboto(
                                    fontWeight: FontWeight.w600,
                                    fontSize:
                                        MediaQuery.of(context).size.height *
                                            0.021),
                              ),
                            ),
                            SizedBox(
                              height:
                                  MediaQuery.of(context).size.height * 0.015,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(6),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Column(
                                  children: [
                                    ReUsableRow(
                                        title: "Receive date: ",
                                        dataValue:
                                            snapShot["receiveFormattedDate"]),
                                    ReUsableRow(
                                        title: "Delivery date: ",
                                        dataValue:
                                            snapShot["deliveryFormattedDate"]),
                                    ReUsableRow(
                                        title: "Assigned Mechanic: ",
                                        dataValue:
                                            snapShot["assignedMechanic"]),
                                    ReUsableRow(
                                        title: "Service Status: ",
                                        dataValue: "In Progress"),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class ReUsableRow extends StatelessWidget {
  final String title;
  final String dataValue;
  ReUsableRow({
    Key? key,
    required this.title,
    required this.dataValue,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: GoogleFonts.roboto(
              fontWeight: FontWeight.w500,
              fontSize: MediaQuery.of(context).size.height * 0.02),
        ),
        SizedBox(
          width: 15,
        ),
        Expanded(
          child: Text(
            dataValue,
            textAlign: TextAlign.end,
            style: GoogleFonts.roboto(
                fontSize: MediaQuery.of(context).size.height * 0.018),
          ),
        ),
      ],
    );
  }
}
