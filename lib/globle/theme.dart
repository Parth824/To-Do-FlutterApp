import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

const Color bluisClr = Color(0xff4e5ae8);
const Color primaryClr = bluisClr;
const Color darkGreyClr = Color(0xff121212);
Color darkHeaderClr = Color(0xFF424242);
const Color white = Color.fromARGB(255, 159, 117, 117);
const Color pinkClr = Color(0xffff4667);
const Color yellowClr = Color(0XFFFFB746);

class Themes {
  static final light = ThemeData(
    backgroundColor: Colors.white,
    primaryColor: primaryClr,
    brightness: Brightness.light,
  );
  static final dark = ThemeData(
    backgroundColor: darkGreyClr,
    primaryColor: darkGreyClr,
    brightness: Brightness.dark,
  );
}

TextStyle get subHeading {
  return GoogleFonts.lato(
    textStyle: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.bold,
      color: (Get.isDarkMode) ? Colors.grey[400] : Colors.grey,
    ),
  );
}

TextStyle get Heading {
  return GoogleFonts.lato(
    textStyle: TextStyle(
      fontSize: 30,
      fontWeight: FontWeight.bold,
      color: (Get.isDarkMode) ? Colors.white : Colors.black,
    ),
  );
}

TextStyle get titleStyle {
  return GoogleFonts.lato(
    textStyle: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: (Get.isDarkMode) ? Colors.white : Colors.black,
    ),
  );
}

TextStyle get subTitleStyle {
  return GoogleFonts.lato(
    textStyle: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: (Get.isDarkMode) ? Colors.grey[100] : Colors.grey[400],
    )
  );
}
