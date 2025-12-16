import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:task/core/utils/constants/icon_path.dart';
import 'package:task/core/utils/constants/image_path.dart';
import 'package:task/feature/dashboard/widget/dashboard_bar.dart';
import 'package:task/feature/dashboard/widget/data_card_section.dart';
import 'package:task/feature/dashboard/widget/progress_indicator.dart';
import 'package:task/feature/dashboard/widget/source_load.dart';

class DasboardScreen extends StatelessWidget {
  const DasboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffD9E4F1),
     appBar: PreferredSize(
  preferredSize: Size.fromHeight(50.h), 
  child: AppBar(
    backgroundColor: const Color(0xffFFFFFF),
    elevation: 5,
    centerTitle: true,
    leading: Padding(
      padding: EdgeInsets.only(left: 24.w),
      child: IconButton(
        icon: const Icon(
          Icons.arrow_back,
          weight: 24,
          color: Color(0xff04063E),
        ),
        onPressed: () {
          Get.back();
        },
      ),
    ),
    title: Text(
      'SCM',
      style: GoogleFonts.inter(
        fontSize: 16.sp,
        fontWeight: FontWeight.w500,
        color: const Color(0xff04063E),
      ),
    ),
    actions: [
      Padding(
        padding: EdgeInsets.only(right: 24.w),
        child: Image.asset(
          IconPath.bell,
          width: 24.w,
          height: 24.h,
          fit: BoxFit.cover,
        ),
      ),
    ],
  ),
),
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
       Padding(
         padding:  EdgeInsets.symmetric(horizontal: 8.w),
         child: Container(
          width:double.infinity ,
      
          decoration: BoxDecoration(
            color: Color(0xffE5F4FE),
            borderRadius: BorderRadius.circular(4.r),
            border: Border.all(color: Color(0xffA5A7B9),
            width: 1)
          ),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              children: [
                Image.asset(ImagePath.solarcell,width: 24.w,height: 24.h,fit: BoxFit.cover,),
                SizedBox(width: 12.w,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Row(
             
                    children: [
                        Container(
                      width: 12.w,
                      height: 12.h,
                      decoration: BoxDecoration(
                        color: Color(0xff78C6FF),
                        borderRadius: BorderRadius.circular(2.r)
                      ),
                    ),
                    SizedBox(width: 12.w,),
                    Text("Data View",style: GoogleFonts.inter( 
                      fontWeight: FontWeight.w500,
                      fontSize: 14.sp,
                      color: Color(0xff04063E)
                    ),),
                    SizedBox(width: 14.w,),
                    Text("(Active)",style: GoogleFonts.inter( 
                        fontWeight: FontWeight.w500,
                      fontSize: 10.sp,
                      color: Color(0xff0096FC)
                    ),)

                    ],
                  ),
                  SizedBox(height: 4.h,),
                  Text("Data 1      : 55505.63",style: GoogleFonts.inter( 
                       fontWeight: FontWeight.w400,
                      fontSize: 12.sp,
                              color: Color(0xff04063E)
                  ),),
                     SizedBox(height: 4.h,),
                  Text("Data 2     : 58805.63",style: GoogleFonts.inter( 
                       fontWeight: FontWeight.w400,
                      fontSize: 12.sp,
                              color: Color(0xff04063E)
                  ),)
                  ],
                ),
                Spacer(),
                Image(image: AssetImage(IconPath.cevronright,),width: 24.w,height: 24.h,fit: BoxFit.cover,)
              ],
            ),
          ),
         ),
       ),
       SizedBox(height: 8.h,),
       Padding(
         padding:  EdgeInsets.symmetric(horizontal: 8.w),
         child: Container(
          width:double.infinity ,
      
          decoration: BoxDecoration(
            color: Color(0xffE5F4FE),
            borderRadius: BorderRadius.circular(4.r),
            border: Border.all(color: Color(0xffA5A7B9),
            width: 1)
          ),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              children: [
                Image.asset(ImagePath.solarcell,width: 24.w,height: 24.h,fit: BoxFit.cover,),
                SizedBox(width: 12.w,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Row(
             
                    children: [
                        Container(
                      width: 12.w,
                      height: 12.h,
                      decoration: BoxDecoration(
                        color: Color(0xff78C6FF),
                        borderRadius: BorderRadius.circular(2.r)
                      ),
                    ),
                    SizedBox(width: 12.w,),
                    Text("Data View",style: GoogleFonts.inter( 
                      fontWeight: FontWeight.w500,
                      fontSize: 14.sp,
                      color: Color(0xff04063E)
                    ),),
                    SizedBox(width: 14.w,),
                    Text("(Active)",style: GoogleFonts.inter( 
                        fontWeight: FontWeight.w500,
                      fontSize: 10.sp,
                      color: Color(0xff0096FC)
                    ),)

                    ],
                  ),
                  SizedBox(height: 4.h,),
                  Text("Data 1      : 55505.63",style: GoogleFonts.inter( 
                       fontWeight: FontWeight.w400,
                      fontSize: 12.sp,
                              color: Color(0xff04063E)
                  ),),
                     SizedBox(height: 4.h,),
                  Text("Data 2     : 58805.63",style: GoogleFonts.inter( 
                       fontWeight: FontWeight.w400,
                      fontSize: 12.sp,
                              color: Color(0xff04063E)
                  ),)
                  ],
                ),
                Spacer(),
                Image(image: AssetImage(IconPath.cevronright,),width: 24.w,height: 24.h,fit: BoxFit.cover,)
              ],
            ),
          ),
         ),
       ),
       SizedBox(height: 8.h,),
       Padding(
         padding:  EdgeInsets.symmetric(horizontal: 8.w),
         child: Container(
          width:double.infinity ,
      
          decoration: BoxDecoration(
            color: Color(0xffE5F4FE),
            borderRadius: BorderRadius.circular(4.r),
            border: Border.all(color: Color(0xffA5A7B9),
            width: 1)
          ),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              children: [
                Image.asset(ImagePath.solarcell,width: 24.w,height: 24.h,fit: BoxFit.cover,),
                SizedBox(width: 12.w,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Row(
             
                    children: [
                        Container(
                      width: 12.w,
                      height: 12.h,
                      decoration: BoxDecoration(
                        color: Color(0xff78C6FF),
                        borderRadius: BorderRadius.circular(2.r)
                      ),
                    ),
                    SizedBox(width: 12.w,),
                    Text("Data View",style: GoogleFonts.inter( 
                      fontWeight: FontWeight.w500,
                      fontSize: 14.sp,
                      color: Color(0xff04063E)
                    ),),
                    SizedBox(width: 14.w,),
                    Text("(Active)",style: GoogleFonts.inter( 
                        fontWeight: FontWeight.w500,
                      fontSize: 10.sp,
                      color: Color(0xff0096FC)
                    ),)

                    ],
                  ),
                  SizedBox(height: 4.h,),
                  Text("Data 1      : 55505.63",style: GoogleFonts.inter( 
                       fontWeight: FontWeight.w400,
                      fontSize: 12.sp,
                              color: Color(0xff04063E)
                  ),),
                     SizedBox(height: 4.h,),
                  Text("Data 2     : 58805.63",style: GoogleFonts.inter( 
                       fontWeight: FontWeight.w400,
                      fontSize: 12.sp,
                              color: Color(0xff04063E)
                  ),)
                  ],
                ),
                Spacer(),
                Image(image: AssetImage(IconPath.cevronright,),width: 24.w,height: 24.h,fit: BoxFit.cover,)
              ],
            ),
          ),
         ),
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