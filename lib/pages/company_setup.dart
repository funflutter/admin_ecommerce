import "package:ecom_admin/components/address_field.dart";
import "package:ecom_admin/components/dropdown_field.dart";
import "package:ecom_admin/components/entry_fields.dart";
import "package:ecom_admin/components/my_button.dart";
import "package:ecom_admin/pages/home_page.dart";
import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";

class CompanySetup extends StatefulWidget {
  const CompanySetup({super.key});

  @override
  State<CompanySetup> createState() => _CompanySetupState();
}

class _CompanySetupState extends State<CompanySetup> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController companyNameController = TextEditingController();
  final TextEditingController phoneNumberController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController pincodeController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  String? selectedValue;

  @override
  void dispose() {
    companyNameController.dispose();
    phoneNumberController.dispose();
    emailController.dispose();
    pincodeController.dispose();
    addressController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade100,
                offset: Offset(0, 2),
                blurRadius: 20,
              ),
            ],
          ),
          child: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            centerTitle: true,
            title: Text(
              "Alpha Pvt Ltd",
              style: GoogleFonts.dmSans(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Form(
            key: _formKey,
            child: SingleChildScrollView(
              padding: const EdgeInsets.only(
                  bottom: 120), // Extra space for bottom button
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20),
                  EntryFields(
                    controller: companyNameController,
                    labelText: "Company Name",
                  ),
                  const SizedBox(height: 16),
                  EntryFields(
                    controller: emailController,
                    labelText: "Company Email",
                  ),
                  const SizedBox(height: 16),
                  EntryFields(
                    controller: phoneNumberController,
                    labelText: "Phone Number",
                  ),
                  const SizedBox(height: 16),
                  EntryFields(
                    controller: pincodeController,
                    labelText: "PIN Code",
                  ),
                  const SizedBox(height: 16),
                  AddressField(
                    controller: addressController,
                    labelText: "Company Address",
                  ),
                  const SizedBox(height: 16),
                  MyDropdownField(
                    items: ['Male', 'Female'],
                    selectedValue: selectedValue,
                    hintText: 'Select Your Gender',
                    validator: (value) =>
                        value == null ? 'Please select gender.' : null,
                    onChanged: (value) {
                      setState(() {
                        selectedValue = value;
                      });
                      _formKey.currentState
                          ?.validate(); // 👈 Re-validates on selection
                    },
                    onSaved: (value) {
                      selectedValue = value;
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      bottomSheet: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        color: Colors.white,
        child: MyButton(
          text: "Next",
          onTap: () {
            if (_formKey.currentState?.validate() ?? false) {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const HomePage(),
                ),
              );
            }
          },
        ),
      ),
    );
  }
}
