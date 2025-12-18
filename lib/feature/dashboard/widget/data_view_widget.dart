import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'today_data_page.dart';
import 'custom_date_data_page.dart';

class DataViewWidget extends StatefulWidget {
  const DataViewWidget({super.key});

  @override
  State<DataViewWidget> createState() => _DataViewWidgetState();
}

class _DataViewWidgetState extends State<DataViewWidget> {
  bool isTodayData = true;

  @override
  Widget build(BuildContext context) {
  return SingleChildScrollView(
    child: Column(
   children: [
    SizedBox(height: 10,),
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
                   value: isTodayData ? 0.55 : 0.54,
                   strokeWidth: 20,
                   strokeCap: StrokeCap.round,
                   backgroundColor: Colors.grey.shade200,
                   valueColor: AlwaysStoppedAnimation<Color>(
                     isTodayData ? Colors.blue : Colors.blue
                   ),
                 ),
               ),
             ),
             Column(
               mainAxisSize: MainAxisSize.min,
               children: [
                 Text(
                   isTodayData ? '55.00' : '57.50',
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
    SizedBox(height: 20.h),
    Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () => setState(() => isTodayData = true),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
            child: Row(
              children: [
                Icon(
                  Icons.circle,
                  size: isTodayData ? 10.sp : 8.sp,
                  color: isTodayData ? Color(0xff1E88E5) : Color(0xff646984),
                ),
                SizedBox(width: 6.w),
                Text(
                  'Today Data',
                  style: GoogleFonts.inter(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                    color: isTodayData ? Color(0xff1E88E5) : Color(0xff646984)
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(width: 16.w),
        GestureDetector(
          onTap: () => setState(() => isTodayData = false),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
            child: Row(
              children: [
                Icon(
                  Icons.circle,
                  size: !isTodayData ? 10.sp : 8.sp,
                  color: !isTodayData ? Color(0xff1E88E5) : Colors.grey.shade400,
                ),
                SizedBox(width: 6.w),
                Text(
                  'Custom Date Data',
                  style: GoogleFonts.inter(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                    color: !isTodayData ? Color(0xff1E88E5) : Colors.grey.shade600,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    ),
     SizedBox(height: 20.h),
     isTodayData ? TodayDataPage() : CustomDateDataPage(),
   ],
    ),
  );
  }
}


