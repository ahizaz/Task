import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class DashboardButton extends StatelessWidget {
  final String iconPath;
  final String title;
  final double? padding;

  const DashboardButton({
    super.key,
    required this.iconPath,
    required this.title,
    this.padding = 8.0,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 42.h,
      decoration: BoxDecoration(
        color: Color(0xffFFFFFF),
        borderRadius: BorderRadius.circular(8.r),
        border: Border.all(
          color: Color(0xffB6B8D0),
          width: 1.w,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(padding!),
        child: Row(
          children: [
            Image(
              image: AssetImage(iconPath),
              width: 24.w,
              height: 24.h,
              fit: BoxFit.cover,
            ),
            SizedBox(width: 8.w),
            Text(
              title,
              style: GoogleFonts.inter(
                fontSize: 14.sp,
                fontWeight: FontWeight.w600,
                color: Color(0xff646984),
              ),
            )
          ],
        ),
      ),
    );
  }
}
