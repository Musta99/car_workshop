import 'package:car_workshop/providers/user_authentication_provider.dart';
import 'package:car_workshop/services/firebase_auth.dart';
import 'package:car_workshop/utils/app_colors.dart';
import 'package:car_workshop/view/user_authentication/signup_screen.dart';
import 'package:car_workshop/view_model/signup_authentication.dart';
import 'package:car_workshop/widgets/common_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Container(
            margin: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.height * 0.02,
            ),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Login",
                    style: GoogleFonts.roboto(
                      fontSize: MediaQuery.of(context).size.height * 0.035,
                      fontWeight: FontWeight.bold,
                      color: AppColor().commonColor,
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.043,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hello there!",
                        style: GoogleFonts.roboto(
                          fontSize: MediaQuery.of(context).size.height * 0.03,
                        ),
                      ),
                      Text(
                        "Welcome back",
                        style: GoogleFonts.roboto(
                          fontSize: MediaQuery.of(context).size.height * 0.03,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.043,
                  ),
                  // ========= Text Input Field for Email and Password ============== //
                  Column(
                    children: [
                      TextFormField(
                        style: TextStyle(
                          fontSize: MediaQuery.of(context).size.height * 0.021,
                        ),
                        controller: emailController,
                        decoration: InputDecoration(
                          hintText: "Enter your email",
                          hintStyle: TextStyle(
                            fontSize:
                                MediaQuery.of(context).size.height * 0.021,
                          ),
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.025,
                      ),
                      TextFormField(
                        style: TextStyle(
                          fontSize: MediaQuery.of(context).size.height * 0.021,
                        ),
                        obscureText:
                            Provider.of<UserAuthenticationProvider>(context)
                                .isObscured,
                        controller: passwordController,
                        decoration: InputDecoration(
                          hintText: "Enter your password",
                          hintStyle: TextStyle(
                            fontSize:
                                MediaQuery.of(context).size.height * 0.021,
                          ),
                          border: OutlineInputBorder(),
                          suffixIcon: Padding(
                            padding: EdgeInsets.only(
                              right: 15,
                            ),
                            child: GestureDetector(
                              onTap: () {
                                Provider.of<UserAuthenticationProvider>(context,
                                        listen: false)
                                    .passwordVisibility();
                              },
                              child: Icon(
                                Provider.of<UserAuthenticationProvider>(context,
                                                listen: false)
                                            .isObscured ==
                                        true
                                    ? FontAwesomeIcons.eyeSlash
                                    : FontAwesomeIcons.eye,
                                size:
                                    MediaQuery.of(context).size.height * 0.0225,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Forgot password?",
                          style: GoogleFonts.roboto(
                            fontSize:
                                MediaQuery.of(context).size.height * 0.016,
                            color: AppColor().commonColor,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.043,
                      ),
                      // ----------- Login Button ------------ //
                      GestureDetector(
                        onTap: () {
                          SignupAuthentication().logInUser(
                            context,
                            emailController.text,
                            passwordController.text,
                          );
                        },
                        child: CommonButton(
                            title:
                                Provider.of<UserAuthenticationProvider>(context)
                                            .isLoading ==
                                        true
                                    ? "Logging in"
                                    : "Log in"),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.043,
                      ),
                      // ========= Sign up option ============== //
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Don't have an account?",
                            style: GoogleFonts.roboto(
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.02,
                            ),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  CupertinoPageRoute(
                                      builder: (context) => SignupScreen()));
                            },
                            child: Text(
                              "Sign up",
                              style: GoogleFonts.roboto(
                                fontSize:
                                    MediaQuery.of(context).size.height * 0.02,
                                fontWeight: FontWeight.bold,
                                color: AppColor().commonColor,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
