import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class DataViewWidget extends StatelessWidget {
  const DataViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
  return Column(
   children: [
     Center(
       child: SizedBox(
         width: 200,
         height: 200,
         child: Stack(
           alignment: Alignment.center,
           children: [
             SizedBox(
               width: 160.w,
               height: 160.h,
               child: Transform(
                 alignment: Alignment.center,
                 transform: Matrix4.rotationY(3.14159),
                 child: CircularProgressIndicator(
                   value: 0.55,
                   strokeWidth: 20,
                   strokeCap: StrokeCap.round,
                   backgroundColor: Colors.grey.shade200,
                   valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
                 ),
               ),
             ),
             Column(
               mainAxisSize: MainAxisSize.min,
               children: [
                 Text(
                   '57.00',
                  style: GoogleFonts.inter( 
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff04063E)
                  ),
                 ),
                 Text(
                   'kWh/Sqft',
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
     Row(
      children: [
        
      ],
     )
   ],
  );
  }
}

  