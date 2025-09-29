import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_unapps/constant/theme/color_constant.dart';

class TextConfig {
  static const TextStyle fontHeadline = TextStyle(fontSize: 18);

  static TextStyle loginHeader = TextStyle(
    fontFamily: GoogleFonts.poppins().fontFamily,
    color: ColorConstant.loginHeader,
    fontSize: 20,
    fontWeight: FontWeight.w600,
  );

  static TextStyle forgotPassword = TextStyle(
    fontFamily: GoogleFonts.poppins().fontFamily,
    color: ColorConstant.loginHeader,
    fontSize: 16,
    fontWeight: FontWeight.w600,
  );

  static TextStyle standardText = TextStyle(
    fontFamily: GoogleFonts.poppins().fontFamily,
    color: ColorConstant.standarText,
    fontSize: 16,
    fontWeight: FontWeight.w600,
  );

  static TextStyle smallText = TextStyle(
    fontFamily: GoogleFonts.poppins().fontFamily,
    color: ColorConstant.standarText,
    fontSize: 14,
    fontWeight: FontWeight.w600,
  );

    static TextStyle smallTextColored = TextStyle(
    fontFamily: GoogleFonts.poppins().fontFamily,
    color: ColorConstant.elevatedButtonColor,
    fontSize: 14,
    fontWeight: FontWeight.w600,
  );

  static TextStyle extraSmallText = TextStyle(
    fontFamily: GoogleFonts.poppins().fontFamily,
    color: ColorConstant.standarText,
    fontSize: 12,
    fontWeight: FontWeight.w600,
  );

  static TextStyle extraLargeText = TextStyle(
    fontFamily: GoogleFonts.poppins().fontFamily,
    color: ColorConstant.standarText,
    fontSize: 24,
    fontWeight: FontWeight.w600,
  );

  static TextStyle largeText = TextStyle(
    fontFamily: GoogleFonts.poppins().fontFamily,
    color: ColorConstant.standarText,
    fontSize: 20,
    fontWeight: FontWeight.w600,
  );

  static TextStyle standarTextWhite = TextStyle(
    fontFamily: GoogleFonts.poppins().fontFamily,
    color: ColorConstant.secondary100,
    fontSize: 16,
    fontWeight: FontWeight.w600,
  );
}
