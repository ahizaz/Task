import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';


class TodayDataPage extends StatelessWidget {
  const TodayDataPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
     width:double.infinity ,
     height: 267.h,
     decoration: BoxDecoration(
      color: Color(0xffFFFFFF),
      borderRadius: BorderRadius.circular(10.r),
      border: Border.all(
        color: Color(0xffA5A7B9),
        width: 1.w
      )
     ),
     child: Column(
      children: [
        Padding(
          padding:  EdgeInsets.symmetric(vertical: 20.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
             
             Text("Energy Chart",style: GoogleFonts.inter( 
              fontSize: 14.sp,
              fontWeight: FontWeight.w600,
              color: Color(0xff04063E)
             ),),
             SizedBox(width: 36.w,),
                 Text("5.53 kw",style: GoogleFonts.inter( 
              fontSize: 32.sp,
              fontWeight: FontWeight.w600,
              color: Color(0xff04063E)
             ),),
            ],
          ),
        ),
        SizedBox(height: 20.h,),
        Padding(
          padding:  EdgeInsets.symmetric(horizontal: 8.w),
          child: Container(
            width: double.infinity,
            height: 42.h,
          ),
        )
      ],
     ),
    );
  }
}
