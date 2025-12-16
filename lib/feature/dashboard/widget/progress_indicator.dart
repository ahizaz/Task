// widgets/circular_power_indicator.dart
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CircularPowerIndicator extends StatelessWidget {
  const CircularPowerIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
       
        SizedBox(
          width: 160.w,
          height: 160.h,
          child: Stack(
            alignment: Alignment.center,
            children: [
              SizedBox(
                width: 160.w,
                height: 160.h,
                child: const CircularProgressIndicator(
                  value: 1.0,
                  strokeWidth: 30,
                  backgroundColor: Color(0xffE3F2FD),
                  valueColor: AlwaysStoppedAnimation(Color(0xff398FC9)),
                ),
              ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Total Power',
                style: GoogleFonts.inter(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xff04063E),
                ),
              ),
              SizedBox(height: 4.h),
              Text(
                '5.53 kw',
                style: GoogleFonts.inter(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xff04063E),
                ),
              ),
            ],
          ),
        ],
      ),
        ),
      ],
    );
  }
}