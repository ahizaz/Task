// widgets/source_load_toggle.dart
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class SourceLoadToggle extends StatelessWidget {
  const SourceLoadToggle({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 29.w),
      child: Container(
        height: 36.h,
        decoration: BoxDecoration(
          color: const Color(0xff6C99B833).withValues(alpha: 0.06),
          borderRadius: BorderRadius.circular(18.r),
        ),
        child: Row(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: const Color(0xff0096FC),
                  borderRadius: BorderRadius.circular(18.r),
                ),
                child: Center(
                  child: Text(
                    'Source',
                    style: GoogleFonts.inter(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Center(
                child: Text(
                  'Load',
                  style: GoogleFonts.inter(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xff757575),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}