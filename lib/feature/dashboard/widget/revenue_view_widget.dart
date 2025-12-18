import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';


class RevenueViewWidget extends StatelessWidget {
  const RevenueViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
     width: double.infinity,
     decoration: BoxDecoration(
      color: Color(0xffFFFFFF),
     ),
    child: Column(
      children: [
        SizedBox(height: 20.h,),
          Center(
       child: SizedBox(
         width: 150,
         height: 150,
         child: Stack(
           alignment: Alignment.center,
           children: [
             SizedBox(
               width: 150.w,
               height: 150.h,
               child: Transform(
                 alignment: Alignment.center,
                 transform: Matrix4.rotationY(3.14159),
                 child: CircularProgressIndicator(
                   value:  0.55 ,
                   strokeWidth: 20,
                   strokeCap: StrokeCap.round,
                   backgroundColor: Colors.grey.shade200,
                   valueColor: AlwaysStoppedAnimation<Color>(
                     Colors.blue
                   ),
                 ),
               ),
             ),
             Column(
               mainAxisSize: MainAxisSize.min,
               children: [
                 Text(
                 '8897455',
                  style: GoogleFonts.inter( 
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff04063E)
                  ),
                 ),
                 Text(
                   'tk',
                   style: GoogleFonts.inter(  
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff04063E)
                   )
                 ),
               ],
             ),
           ],
         ),
       ),
     ),
      ],
    ),
    );
  }
}
