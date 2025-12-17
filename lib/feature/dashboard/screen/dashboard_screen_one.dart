import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task/feature/dashboard/widget/dashboard_appbar.dart';
class DashboardScreenOne extends StatelessWidget {
  const DashboardScreenOne({super.key});
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color(0xffD9E4F1),
      appBar: DashboardAppBar(),
      body: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: height * 0.83,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(32),
                  topRight: Radius.circular(32),
                ),
              ),
            ),
          ),
          Positioned(
            top: height * 0.02,
            left: 40,
            right: 40,
            child: Container(
              height: 55,
              decoration: BoxDecoration(
                color: Color(0xffFFFFFF),
                borderRadius: BorderRadius.circular(12.r),
              border: Border.all(
                color: Color(0xffA5A7B9),
                width: 1.w,
              )
              ),
              child: Padding(
                padding:  EdgeInsets.symmetric(horizontal: 16.w),
                child: Row(
                  children: [
                  Container(
               height: 14,
            width: 14,
              decoration: BoxDecoration(
               color: Colors.white,
              shape: BoxShape.circle,
             border: Border.all(
                  color: Color(0xff0096FC),
                width: 2,
                ),
                ),
             child: Center(
            child: Container(
              height: 7,
             width: 7,
             decoration: const BoxDecoration(
               color:  Color(0xff0096FC),
                  shape: BoxShape.circle,
                 ),
            ),
               ),
                 ),         
SizedBox(width: 5.w,),
Text("Data View ",style: GoogleFonts.inter( 
  fontSize: 16.sp,
  fontWeight: FontWeight.w600,
  color: Color(0xff0096FC)
),),
   Spacer(),
     Container(
               height: 14,
            width: 14,
              decoration: BoxDecoration(
               color: Colors.white,
              shape: BoxShape.circle,
             border: Border.all(
                  color: Color(0xffA5A7B9),
                width: 2,
                ),
                ),
             child: Center(
            child: Container(
              height: 7,
             width: 7,
             decoration: const BoxDecoration(
               color:  Color(0xffA5A7B9),
                  shape: BoxShape.circle,
                 ),
            ),
               ),
                 ),         
SizedBox(width: 5.w,),
Text("Revenue View",style: GoogleFonts.inter( 
  fontSize: 16.sp,
  fontWeight: FontWeight.w400,
  color: Color(0xff646984)
),),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
