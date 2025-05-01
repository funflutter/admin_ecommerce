import 'package:ecom_admin/components/my_button.dart';
import 'package:ecom_admin/components/my_textfield.dart';
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: Padding(
        padding:
            const EdgeInsets.only(left: 25.0, right: 25, top: 20, bottom: 40),
        child: MyButton(
          text: "Sign In",
          onTap: () {
            // Add login validation here if needed
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const CompanySetup(),
              ),
            );
          },
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 25, right: 25, top: 80),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // title
                  Text(
                    "Admin Login",
                    style: GoogleFonts.dmSans(
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                      letterSpacing: -1.2,
                    ),
                  ),

                  const SizedBox(height: 16),

                  // email text field
                  MyTextfield(
                    text: "Email",
                    obscureText: false,
                    controller: emailController,
                  ),

                  const SizedBox(height: 12),

                  // password text field
                  MyTextfield(
                    obscureText: true,
                    text: "Password",
                    controller: passwordController,
                  ),
                ],
              ),

              const SizedBox(height: 6),

              // forgot password?
              Text(
                "Forgot Password?",
                style: GoogleFonts.dmSans(
                  fontWeight: FontWeight.w500,
                  color: const Color.fromARGB(255, 14, 105, 180),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
