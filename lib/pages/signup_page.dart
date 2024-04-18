import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grad/components/main_button.dart';
import 'package:grad/helpers/font_size.dart';
import 'package:grad/helpers/theme_colors.dart';
import 'package:grad/pages/login_page.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ThemeColors.scaffoldBgColor,
        elevation: 0,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 0),
                  child: Text(
                    "Sign Up for new Account",
                    style: GoogleFonts.poppins(
                      color: ThemeColors.navyTextColor,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 5, 0, 10),
                  child: Text(
                    "Enter your data to create an account",
                    style: GoogleFonts.poppins(
                      color: const Color.fromARGB(255, 188, 187, 187),
                      fontSize: FontSize.medium,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding:  EdgeInsets.only(left: 11, bottom: 8),
                        child: Text(
                          'Full Name',
                          style:
                              TextStyle(color: Color.fromARGB(255, 188, 187, 187)),
                        ),
                      ),
                      TextFormField(
                        controller: _nameController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "This field can't be empty";
                          }
                          return null;
                        },
                        style: GoogleFonts.poppins(
                          color: ThemeColors.navyTextColor,
                        ),
                        keyboardType: TextInputType.name,
                        cursorColor: ThemeColors.primaryColor,
                        decoration: InputDecoration(
                          hintText: "FirstName LastName",
                          hintStyle: GoogleFonts.poppins(
                            color: ThemeColors.navyTextColor,
                            fontSize: FontSize.small,
                          ),
                          border: const OutlineInputBorder(
                           borderSide: BorderSide(color: Color.fromARGB(255, 188, 187, 187)),
                           borderRadius: BorderRadius.all(Radius.circular(15)),),
                          enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color:  Color.fromARGB(255, 188, 187, 187)),
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                          ),
                          contentPadding:
                             const EdgeInsets.symmetric(vertical: 13, horizontal: 15),
                        ),
                      ),
                      const SizedBox(height: 13),
                      const Padding(
                        padding: EdgeInsets.only(left: 11, bottom: 8),
                        child: Text(
                          'Email',
                          style:
                              TextStyle(color: Color.fromARGB(255, 188, 187, 187)),
                        ),
                      ),
                      TextFormField(
                        controller: _emailController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "This field can't be empty";
                          }
                          if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$')
                              .hasMatch(value)) {
                            return 'Please enter a valid email.';
                          }
                          return null;
                        },
                        style: GoogleFonts.poppins(
                          color: ThemeColors.navyTextColor,
                        ),
                        cursorColor: ThemeColors.primaryColor,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          hintText: "Email@email.com",
                          hintStyle: GoogleFonts.poppins(
                            color: ThemeColors.navyTextColor,
                            fontSize: FontSize.small,
                          ),
                          border: const OutlineInputBorder(
                           borderSide: BorderSide(color: Color.fromARGB(255, 188, 187, 187)),
                           borderRadius: BorderRadius.all(Radius.circular(15)),),
                          enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color:  Color.fromARGB(255, 188, 187, 187)),
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                          ),
                          contentPadding:
                              const EdgeInsets.symmetric(vertical: 13, horizontal: 15),
                        ),
                      ),
                      const SizedBox(height: 13),
                     const Padding(
                        padding:  EdgeInsets.only(left: 11, bottom: 8),
                        child: Text(
                          'Phone Number',
                          style:
                              TextStyle(color: Color.fromARGB(255, 188, 187, 187)),
                        ),
                      ),
                      TextFormField(
                        controller: _phoneController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "This field can't be empty";
                          }
                          if (!RegExp(r'^[0-9]{11}$').hasMatch(value)) {
                            return 'Please enter a valid 11-digit phone number.';
                          }
                          return null;
                        },
                        style: GoogleFonts.poppins(
                          color: ThemeColors.navyTextColor,
                        ),
                        cursorColor: ThemeColors.primaryColor,
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                          hintText: "01xxxxxxxx",
                          hintStyle: GoogleFonts.poppins(
                            color: ThemeColors.navyTextColor,
                            fontSize: FontSize.small,
                          ),
                          border: const OutlineInputBorder(
                           borderSide: BorderSide(color: Color.fromARGB(255, 188, 187, 187)),
                           borderRadius: BorderRadius.all(Radius.circular(15)),),
                          enabledBorder:const  OutlineInputBorder(
                            borderSide: BorderSide(color: Color.fromARGB(255, 188, 187, 187)),
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                          ),
                          contentPadding:
                              const EdgeInsets.symmetric(vertical: 13, horizontal: 15),
                        ),
                      ),
                      const SizedBox(height: 13),
                      const Padding(
                        padding:  EdgeInsets.only(left: 11, bottom: 8),
                        child: Text(
                          'Password',
                          style:
                              TextStyle(color: Color.fromARGB(255, 188, 187, 187)),
                        ),
                      ),
                      TextFormField(
                        controller: _passwordController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "This field can't be empty";
                          }
                          if (value.length < 8) {
                            return 'Password must be at least 6 characters long.';
                          }
                          if (!RegExp(
                                  r'^(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9]).{6,}$')
                              .hasMatch(value)) {
                            return 'Password must contain at least one uppercase letter, one lowercase letter, and one digit.';
                          }
                          return null;
                        },
                        obscureText: true,
                        style: GoogleFonts.poppins(
                          color: ThemeColors.navyTextColor,
                        ),
                        keyboardType: TextInputType.visiblePassword,
                        cursorColor: ThemeColors.primaryColor,
                        decoration: InputDecoration(
                          hintText: "**** **** ****",
                          hintStyle: GoogleFonts.poppins(
                            color: ThemeColors.navyTextColor,
                            fontSize: FontSize.small,
                          ),
                          border: const OutlineInputBorder(
                           borderSide: BorderSide(color: Color.fromARGB(255, 188, 187, 187)),
                           borderRadius: BorderRadius.all(Radius.circular(15)),),
                          enabledBorder:const  OutlineInputBorder(
                            borderSide: BorderSide(color: Color.fromARGB(255, 188, 187, 187)),
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                          ),
                          contentPadding:
                             const EdgeInsets.symmetric(vertical: 13, horizontal: 15),
                        ),
                      ),
                      const SizedBox(height: 13),
                      const Padding(
                        padding:  EdgeInsets.only(left: 11, bottom: 8),
                        child: Text(
                          'Confirm Password',
                          style:
                              TextStyle(color: Color.fromARGB(255, 188, 187, 187)),
                        ),
                      ),
                      TextFormField(
                        controller: _confirmPasswordController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "This field can't be empty";
                          }
                          if (value != _passwordController.text) {
                            return "Passwords do not match";
                          }
                          return null;
                        },
                        obscureText: true,
                        style: GoogleFonts.poppins(
                          color: ThemeColors.navyTextColor,
                        ),
                        keyboardType: TextInputType.visiblePassword,
                        cursorColor: ThemeColors.primaryColor,
                        decoration: InputDecoration(
                          hintText: "**** **** ****",
                          hintStyle: GoogleFonts.poppins(
                            color: ThemeColors.navyTextColor,
                            fontSize: FontSize.small,
                          ),
                          border: const OutlineInputBorder(
                           borderSide: BorderSide(color: Color.fromARGB(255, 188, 187, 187)),
                           borderRadius: BorderRadius.all(Radius.circular(15)),
),
                          enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Color.fromARGB(255, 188, 187, 187)),
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                          ),
                          contentPadding:
                              const EdgeInsets.symmetric(vertical: 13, horizontal: 15),
                        ),
                      ),
                      
                       const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                         const Text(
                            "Already have an account? ",
                            style: TextStyle(color:  Color.fromARGB(255, 188, 187, 187)),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const LoginPage()),
                              );
                            },
                            child: const Text(
                              "Login",
                              style: TextStyle(
                                color: ThemeColors.navyTextColor,
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.underline
                              ),
                            )
                          )
                    ],
                  ),
                  const SizedBox(height: 50),
                      MainButton(
                        text: 'Sign Up',
                        onTap: () {
                          if (_formKey.currentState!.validate()) {
                            // Handle sign up logic here
                          }
                        },
                      ),
              ]),
          ),
          ]),
            ),
          ),
        ),
      );
  }
}
