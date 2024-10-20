import 'package:car_workshop/providers/home_screen_provider.dart';
import 'package:car_workshop/providers/user_authentication_provider.dart';
import 'package:car_workshop/services/firebase_cloudstore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ServiceReservation {
  Future saveReservationData(BuildContext context, registration, cName, cPhone,
      cEmail, bookingTitle) async {
    try {
      if (Provider.of<HomeScreenProvider>(context, listen: false)
                  .selectedManufacturer ==
              "" ||
          Provider.of<HomeScreenProvider>(context, listen: false)
                  .selectedModel ==
              "" ||
          Provider.of<HomeScreenProvider>(context, listen: false)
                  .selectedYear ==
              "" ||
          registration.isEmpty ||
          cName.isEmpty ||
          cPhone.isEmpty ||
          cEmail.isEmpty ||
          bookingTitle.isEmpty ||
          Provider.of<HomeScreenProvider>(context, listen: false)
                  .timestapReceiveDate ==
              0 ||
          Provider.of<HomeScreenProvider>(context, listen: false)
                  .timestapDeliveryDate ==
              0 ||
          Provider.of<HomeScreenProvider>(context, listen: false)
                  .selectedMechanic ==
              "") {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            backgroundColor: Colors.red,
            content: Text(
              "Please fill all the fields",
              style: GoogleFonts.roboto(
                color: Colors.white,
              ),
            )));
      } else {
        Provider.of<UserAuthenticationProvider>(context, listen: false)
            .showIndicator();
        await FirebaseCloudStore().saveServiceBookingInfo(
            context, registration, cName, cPhone, cEmail, bookingTitle);

        Provider.of<UserAuthenticationProvider>(context, listen: false)
            .hideIndicator();

        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            backgroundColor: Colors.green,
            content: Text(
              "Successfully reserved service",
              style: GoogleFonts.roboto(
                color: Colors.white,
              ),
            )));
      }
    } catch (err) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          backgroundColor: Colors.red,
          content: Text(
            err.toString(),
            style: GoogleFonts.roboto(
              color: Colors.white,
            ),
          )));
    }
  }
}
