import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grad/components/main_button.dart';
import 'package:grad/helpers/font_size.dart';
import 'package:grad/helpers/theme_colors.dart';

class SignUpPage extends StatefulWidget{
  const SignUpPage({super.key});
  @override
 State<SignUpPage> createState() {
    return _SignUpPageState ();
  }
  
}
class _SignUpPageState extends State<SignUpPage> {
  final _formKey = GlobalKey<FormState>();

 final TextEditingController _nameController = TextEditingController();
 final TextEditingController _emailController = TextEditingController();
 final TextEditingController _phoneController = TextEditingController();
 final TextEditingController _passwordController = TextEditingController();

@override
  Widget build (BuildContext context){
    return Scaffold(appBar: AppBar(
        backgroundColor: ThemeColors.scaffoldBgColor,
        elevation: 0,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "New here? Welcome!",
                  style: GoogleFonts.poppins(
                    color: ThemeColors.whiteTextColor,
                    fontSize: FontSize.xxLarge,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 7),
                  child: Text(
                    "Please fill the form to continue.",
                    style: GoogleFonts.poppins(
                      color: ThemeColors.greyTextColor,
                      fontSize: FontSize.medium,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
               const SizedBox(height: 70),
                Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      ///Name Input Field
                      TextFormField(
                        controller: _nameController,
                        validator: (value) {
                          if (_nameController.text.isEmpty) {
                            return "This field can't be empty";
                          }
                        },
                        style: GoogleFonts.poppins(
                          color: ThemeColors.whiteTextColor,
                        ),
                        keyboardType: TextInputType.name,
                        cursorColor: ThemeColors.primaryColor,
                        decoration: InputDecoration(
                          fillColor: ThemeColors.textFieldBgColor,
                          filled: true,
                          hintText: "Full name",
                          hintStyle: GoogleFonts.poppins(
                            color: ThemeColors.textFieldHintColor,
                            fontSize: FontSize.medium,
                            fontWeight: FontWeight.w400,
                          ),
                          border:const OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.all(Radius.circular(18)),
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),

                      ///E-mail Input Field
                      TextFormField(
                        controller: _emailController,
                        validator: (value) {
                          if (_emailController.text.isEmpty) {
                            return "This field can't be empty";
                          }
                           if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(_emailController.text)) {
                return 'Please enter a valid email.';
              }
                        },
                        style: GoogleFonts.poppins(
                          color: ThemeColors.whiteTextColor,
                        ),
                        cursorColor: ThemeColors.primaryColor,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          fillColor: ThemeColors.textFieldBgColor,
                          filled: true,
                          hintText: "E-mail",
                          hintStyle: GoogleFonts.poppins(
                            color: ThemeColors.textFieldHintColor,
                            fontSize: FontSize.medium,
                            fontWeight: FontWeight.w400,
                          ),
                          border: const OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.all(Radius.circular(18)),
                          ),
                        ),
                      ),
                     const  SizedBox(height: 16),

                      ///Phone Input Field
                      TextFormField(
                        controller: _phoneController,
                        validator: (value) {
                          if (_phoneController.text.isEmpty) {
                            return "This field can't be empty";
                          }
                           if (!RegExp(r'^[0-10]{11}$').hasMatch(_phoneController.text)) {
                return 'Please enter a valid 11-digit phone number.';}
                        },
                        style: GoogleFonts.poppins(
                          color: ThemeColors.whiteTextColor,
                        ),
                        cursorColor: ThemeColors.primaryColor,
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                          fillColor: ThemeColors.textFieldBgColor,
                          filled: true,
                          hintText: "Phone number",
                          hintStyle: GoogleFonts.poppins(
                            color: ThemeColors.textFieldHintColor,
                            fontSize: FontSize.medium,
                            fontWeight: FontWeight.w400,
                          ),
                          border: const OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.all(Radius.circular(18)),
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),

                      ///Password Input Field
                      TextFormField(
                        controller: _passwordController,
                        validator: (value) {
                          if (_passwordController.text.isEmpty) {
                            return "This field can't be empty";
                          }
                              if (_passwordController.text.length < 8) {
                return 'Password must be at least 6 characters long.';
              }
              if (!RegExp(r'^(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9]).{6,}$').hasMatch(_passwordController.text)) {
                return 'Password must contain at least one uppercase letter, one lowercase letter, and one digit.';
              }
                        },
                        obscureText: true,
                        style: GoogleFonts.poppins(
                          color: ThemeColors.whiteTextColor,
                        ),
                        keyboardType: TextInputType.visiblePassword,
                        cursorColor: ThemeColors.primaryColor,
                        decoration: InputDecoration(
                          fillColor: ThemeColors.textFieldBgColor,
                          filled: true,
                          hintText: "Password",
                          hintStyle: GoogleFonts.poppins(
                            color: ThemeColors.textFieldHintColor,
                            fontSize: FontSize.medium,
                            fontWeight: FontWeight.w400,
                          ),
                          border: const OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.all(Radius.circular(18)),
                          ),
                        ),
                      ),
                     const SizedBox(height: 70),
                      MainButton(
                        text: 'Sign Up',
                        onTap: () {
                          _formKey.currentState!.validate();
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}