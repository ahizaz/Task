import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class GlobalTextStyles {
  // App Title Style
  static TextStyle appTitle({Color color = const Color(0xFFFFFFFF)}) {
    return GoogleFonts.inter(
      fontSize: 24.sp,
      fontWeight: FontWeight.w600,
      color: color,
    );
  }

  // Subtitle Style
  static TextStyle subtitle({Color color = const Color(0xFFFFFFFF)}) {
    return GoogleFonts.inter(
      fontSize: 20.sp,
      fontWeight: FontWeight.w600,
      color: color,
    );
  }

  // Body Text Style
  static TextStyle bodyText({
    Color color = const Color(0xFFFFFFFF),
    FontWeight fontWeight = FontWeight.w400,
  }) {
    return GoogleFonts.inter(
      fontSize: 16.sp,
      fontWeight: fontWeight,
      color: color,
    );
  }

  // Small Text Style
  static TextStyle smallText({
    Color color = const Color(0xFFFFFFFF),
    FontWeight fontWeight = FontWeight.w400,
  }) {
    return GoogleFonts.inter(
      fontSize: 14.sp,
      fontWeight: fontWeight,
      color: color,
    );
  }

  // Button Text Style
  static TextStyle buttonText({Color color = const Color(0xFFFFFFFF)}) {
    return GoogleFonts.inter(
      fontSize: 18.sp,
      fontWeight: FontWeight.w600,
      color: color,
    );
  }
}
