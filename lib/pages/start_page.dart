import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grad/components/main_button.dart';
import 'package:grad/helpers/font_size.dart';
import 'package:grad/helpers/theme_colors.dart';
import 'package:grad/pages/login_page.dart';

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
        Image.asset('assets/images/duckkkk.png',
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
                  Align(
                    alignment: Alignment.topCenter,
                    child: Text(
                      'AnswerSmith',
                      style: GoogleFonts.poppins(
                        color :const Color.fromARGB(255, 232, 222, 44),
                        fontSize: FontSize.xxxLarge,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                 const Spacer(),
                  Text(
                    'we are Always there for you',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      color: const Color.fromARGB(255, 157, 158, 138),
                      fontSize: FontSize.large,
                    ),
                  ),
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
                    text: 'Get started',),
                 )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}