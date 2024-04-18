import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:grad/helpers/theme_colors.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grad/helpers/font_size.dart';

class MainButton extends StatelessWidget {
  final String text;
  final Color? backgroundColor;
  final Color? textColor;
  final String? iconPath;
  final Function() onTap;
  const MainButton({
   Key? key,
    required this.text,
    this.backgroundColor,
    this.textColor,
    required this.onTap,
    this.iconPath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 55,
        width: double.infinity,
        decoration: BoxDecoration(
           color: backgroundColor == null
              ? const Color.fromARGB(233, 254, 222, 141)
              : backgroundColor,
          borderRadius: BorderRadius.circular(23),
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              iconPath == null
                  ? Container()
                  : Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Image(
                        image: AssetImage(iconPath!),
                        height: 30,
                      ),
                    ),
              Text(
                text,
                style: GoogleFonts.poppins(
                  color: textColor == null
                      ? ThemeColors.navyTextColor
                      : textColor,
                  fontSize: 15.5,
                  fontWeight:FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ),
    );

  }
}