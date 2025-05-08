import 'package:ecom_admin/components/email_field.dart';
import 'package:ecom_admin/components/my_button.dart';
import 'package:ecom_admin/components/my_textfield.dart';
import 'package:ecom_admin/constant.dart';
import 'package:ecom_admin/pages/company_setup.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>(); // define at class level

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.sizeOf(context).height;
    width = MediaQuery.sizeOf(context).width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffF9FBFF),
        // bottomSheet: Padding(
        //   padding:
        //       const EdgeInsets.only(left: 25.0, right: 25, top: 20, bottom: 40),
        //   child: MyButton(
        //     text: "Sign In",
        //     onTap: () {
        //       if (_formKey.currentState!.validate()) {
        //         // All validations passed
        //         Navigator.push(
        //           context,
        //           MaterialPageRoute(
        //             builder: (context) => const CompanySetup(),
        //           ),
        //         );
        //       }
        //     },
        //   ),
        // ),
        body: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(left: 25, right: 25),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: height / 3),
                  Text(
                    "Admin Login",
                    style: TextStyle(
                      fontFamily: 'sans-bold',
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                      letterSpacing: -0.4,
                    ),
                  ),

                  const SizedBox(height: 16),

                  // email text field
                  EmailField(
                    hintText: "Enter Email",
                    controller: emailController,
                  ),

                  const SizedBox(height: 12),

                  // password text field
                  MyTextfield(
                    obscureText: true,
                    text: "Password",
                    controller: passwordController,
                  ),

                  const SizedBox(height: 6),

                  // forgot password?
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      InkWell(
                        onTap: () {
                          print(' ------------------------------');
                          print(height);
                        },
                        child: Text(
                          "Forgot Password?",
                          style: GoogleFonts.dmSans(
                            fontWeight: FontWeight.w500,
                            color: const Color.fromARGB(255, 14, 105, 180),
                          ),
                        ),
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
