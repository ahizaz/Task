import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task/core/utils/constants/image_path.dart';
import 'package:task/feature/dashboard/widget/dashboard_appbar.dart';

class DashboardNoData extends StatelessWidget {
  const DashboardNoData({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
         backgroundColor: Color(0xffD9E4F1),
      appBar: DashboardAppBar(),
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 24.w),
        child: Column(
          children: [
            SizedBox(height: 12.h,),

            Container(
              width: double.infinity,
              height: 700.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.r),
                color: Color(0xffFFFFFF),
                border: Border.all(
                  color: Color(0xffB6B8D0),
                  width: 1.w,
                )
                
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                   child: Image(image: AssetImage(ImagePath.noData,),width: 259.w,height: 193.h,fit: BoxFit.cover,), 
                  ),
                  Text("No data is here,\n  please wait.",style: GoogleFonts.inter( 
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff5E5E5E)
                  ),)
                ],
              ),
            )
            
          ],
        ),
      ),
    );

    
  }
}