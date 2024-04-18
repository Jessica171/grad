import 'package:flutter/material.dart';
import 'package:grad/helpers/theme_colors.dart';
import 'package:grad/pages/start_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CONVOCART',
      theme: ThemeData(
        primaryColor: ThemeColors.primaryColor,
        scaffoldBackgroundColor: ThemeColors.scaffoldBgColor,
      ),
      home:const StartPage() ,
    );
  }
}

