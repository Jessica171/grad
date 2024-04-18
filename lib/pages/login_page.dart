import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grad/helpers/font_size.dart';
import 'package:grad/helpers/theme_colors.dart';
import 'package:grad/components/main_button.dart';
import 'package:grad/pages/signup_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 50, bottom: 10, left: 0, right: 90),
                  child: Text(
                    "Login To Your Account",
                    style: GoogleFonts.poppins(
                      color: const Color.fromARGB(255, 1, 1, 48),
                      fontSize: FontSize.large,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5, bottom: 40),
                  child: Text(
                    'Enter your registered email and password below',
                    style: GoogleFonts.poppins(
                      color: const Color.fromARGB(255, 188, 187, 187),
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                const SizedBox(height: 2),
                Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 11, bottom: 8),
                        child: Text(
                          'Email',
                          style: TextStyle(color: Color.fromARGB(255, 188, 187, 187)),
                        ),
                      ),
                      TextFormField(
                        controller: _emailController,
                        validator: (value) {
                          if (value!.isEmpty) return "This field can't be empty";
                          if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value))
                            return 'Please enter a valid email.';
                          return null;
                        },
                        style: GoogleFonts.poppins(
                          color: ThemeColors.navyTextColor,
                        ),
                        keyboardType: TextInputType.emailAddress,
                        cursorColor: ThemeColors.primaryColor,
                        decoration: const InputDecoration(
                          hintText: "Email@email.com",
                          hintStyle: TextStyle(
                            fontSize: FontSize.small,
                            color: ThemeColors.navyTextColor,
                          ),
                          floatingLabelBehavior: FloatingLabelBehavior.never,
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Color.fromARGB(255, 188, 187, 187)),
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color.fromARGB(255, 188, 187, 187)),
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                          ),
                          contentPadding: EdgeInsets.symmetric(vertical: 13, horizontal: 15),
                        ),
                      ),
                      const SizedBox(height: 16),
                      const Padding(
                        padding: EdgeInsets.only(left: 11, bottom: 8),
                        child: Text(
                          "Password",
                          style: TextStyle(color: Color.fromARGB(255, 188, 187, 187)),
                        ),
                      ),
                      TextFormField(
                        controller: _passwordController,
                        validator: (value) {
                          if (value!.isEmpty) return "This field can't be empty";
                          return null;
                        },
                        style: GoogleFonts.poppins(
                          color: ThemeColors.navyTextColor,
                        ),
                        obscureText: true,
                        keyboardType: TextInputType.visiblePassword,
                        cursorColor: ThemeColors.primaryColor,
                        decoration: const InputDecoration(
                          hintText: "**** **** ****",
                          hintStyle: TextStyle(
                            fontSize: FontSize.small,
                            color: ThemeColors.navyTextColor,
                          ),
                          floatingLabelBehavior: FloatingLabelBehavior.never,
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Color.fromARGB(255, 188, 187, 187)),
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color.fromARGB(255, 188, 187, 187)),
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                          ),
                          contentPadding: EdgeInsets.symmetric(vertical: 13, horizontal: 15),
                        ),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 10, 160, 20),
                    child: Text(
                      'Forget Password?',
                      style: GoogleFonts.poppins(
                        color: Colors.red,
                        fontSize: FontSize.medium,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 50),
                MainButton(
                  text: 'Login',
                  backgroundColor: ThemeColors.primaryColor,
                  textColor: ThemeColors.navyTextColor,
                  onTap: () {
                    if (_formKey.currentState!.validate()) {
                      // Proceed with login logic
                    }
                  },
                ),
                const SizedBox(height: 16),
                MainButton(
                  text: 'Sign up',
                  backgroundColor: ThemeColors.navyTextColor,
                  textColor: ThemeColors.scaffoldBgColor,
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SignUpPage(),
                    ),
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
