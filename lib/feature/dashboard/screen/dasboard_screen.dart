import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:task/core/utils/constants/image_path.dart';
import 'package:task/feature/dashboard/widget/dashboard_appbar.dart';
import 'package:task/feature/dashboard/widget/dashboard_bar.dart';
import 'package:task/feature/dashboard/widget/data_view_card.dart';
import 'package:task/feature/dashboard/widget/progress_indicator.dart';
import 'package:task/feature/dashboard/widget/source_load.dart';
class DasboardScreen extends StatelessWidget {
  const DasboardScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffD9E4F1),
      appBar: DashboardAppBar(),
      body: SingleChildScrollView(
     child: Padding(
    padding:  EdgeInsets.symmetric(horizontal: 24.w),
       child: Column(
      children: [
        SizedBox(height: 12.w,),
        Container(
          width: double.infinity,
        
          decoration: BoxDecoration(
            color: Color(0xffFFFFFF),
            border: Border.all( 
              color: Color(0xfffB6B8D0),
              width: 1
            ),
            borderRadius: BorderRadius.circular(12.r),
          ),
          child: Column(
            children: [
              DashboardBar(),
               Padding(
                      padding: EdgeInsets.symmetric(vertical: 12.h),
                      child: Text(
                        'Electricity',
                        style: GoogleFonts.inter(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600,
                          color: const Color(0xff9E9E9E),
                        ),
                      ),
                    ),
                     Divider(
          color: const Color(0xff979797),
          thickness: 1,
          height: 1,
          endIndent: 10,
          indent: 10,
        ),
             SizedBox(height: 30.h,),
                    const CircularPowerIndicator(),
                    SizedBox(height: 25.h,),
                    SourceLoadToggle(),
                    SizedBox(height: 5.h,),
                                Divider(
          color: const Color(0xffA5A7B9),
          thickness: 3,
          height: 2,
          endIndent: 10,
          indent: 10,
        ),
        SizedBox(height: 8.h,),
        //1st
        DataViewCard(
          iconPath: ImagePath.solarcell,
          indicatorColor: Color(0xff78C6FF),
          statusText: "(Active)",
          statusColor: Color(0xff0096FC),
        ),
        SizedBox(height: 8.h,),
        //2nd
        DataViewCard(
          iconPath: ImagePath.energy,
          indicatorColor: Color(0xffFB902E),
          statusText: "(Active)",
          statusColor: Color(0xff0096FC),
        ),
        SizedBox(height: 8.h,),
        //3rd
        DataViewCard(
          iconPath: ImagePath.power,
          indicatorColor: Color(0xff78C6FF),
          statusText: "(Inactive)",
          statusColor: Color(0xffDF2222),
        ),
        SizedBox(height: 20.h,),

            ],
          ),
        )
      ],
    ),
  ),
),
    );
  }
}