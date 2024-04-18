import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grad/components/main_button.dart';
import 'package:grad/helpers/font_size.dart';
import 'package:grad/helpers/theme_colors.dart';
import 'package:grad/pages/login_page.dart';
import 'package:grad/pages/signup_page.dart';

class StartPage extends StatefulWidget{
  const StartPage({super.key});
  @override
  State<StartPage> createState() {
    return _StartPageState ();
  }
}

class _StartPageState extends State <StartPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Stack(
      children: [
        Image.asset('assets/images/convo.jpg',
        height: MediaQuery.of(context).size.height,
        fit: BoxFit.fitHeight,
        ),
        Container(
           height: MediaQuery.of(context).size.height,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.transparent,
                  Colors.transparent,
                  ThemeColors.scaffoldBgColor,
                ],
              ),
            ),
          ),
          
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(32.0),
              child: Column(
                children: [
                  const Align(
                    alignment: Alignment.topCenter,
                    
                  ),
                 const Spacer(),
                 const Padding(padding: EdgeInsets.only(top:500),),
                  Text(
                    'Let\'s get Started',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      color: ThemeColors.navyTextColor,
                      fontSize: FontSize.large,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                 
                  const Spacer(),
                Padding(
                  padding:const EdgeInsets.only(top: 25),
                  child: MainButton(
                    onTap:() => Navigator.pushReplacement(
                      context, 
                      CupertinoPageRoute(
                        builder:(context)=> const LoginPage(),
                        ),
                        result: false ,
                    ),
                    text: 'Login / Sign Up',),
                 ),
                 const SizedBox(height: 16),
                      MainButton(
                        text: 'Login with Google',
                         backgroundColor: ThemeColors.navyTextColor,
                        textColor: ThemeColors.scaffoldBgColor,
                        iconPath: 'assets/images/google.png',
                        onTap: () {},
                      ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}