import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task/core/utils/constants/icon_path.dart';
import 'package:task/core/utils/constants/image_path.dart';
import 'package:task/feature/dashboard/screen/dashboard_no_data.dart';
import 'package:task/feature/dashboard/widget/dashboard_appbar.dart';
import 'package:task/feature/dashboard/widget/dashboard_bar.dart';
import 'package:task/feature/dashboard/widget/dashboard_button_row.dart';
import 'package:task/feature/dashboard/widget/data_view_card.dart';
import 'package:task/feature/dashboard/widget/gradiant_tracker_shape.dart';
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
        IntrinsicHeight(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: Column(
                  children: [
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
                  ],
                ),
              ),
              SizedBox(width: 8.w),
           RotatedBox(
  quarterTurns: 3,
  child: SliderTheme(
    data: SliderTheme.of(context).copyWith(
      trackShape: const GradientSliderTrackShape(), // ✅ custom
      trackHeight: 6.h,
      thumbShape: SliderComponentShape.noThumb,
      overlayShape: const RoundSliderOverlayShape(overlayRadius: 0),
      activeTrackColor: Colors.transparent,
      inactiveTrackColor: Colors.transparent,
    ),
    child: Slider(
      value: 0.3,
      onChanged: null,
    ),
  ),
),

              SizedBox(width: 8.w),
            ],
          ),
        ),
        SizedBox(height: 20.h,),
    
            ],
          ),
        ),
        SizedBox(height: 20.h,),
           DashboardButtonRow(
             leftIcon: IconPath.analysis,
             leftTitle: "Analysis Pro",
             rightIcon: IconPath.generator,
             rightTitle: "G. Generator",
             onLeftTap: () {
            Get.to(()=>DashboardNoData());
             },
             onRightTap: () {
             Get.to(()=>DashboardNoData());
             },
           ),
           SizedBox(height: 8.h,),
           DashboardButtonRow(
             leftIcon: IconPath.charge,
             leftTitle: "Plant Summery",
             rightIcon: IconPath.fire,
             rightTitle: "Natural Gas",
             leftPadding: 6.0,
             onLeftTap: () {
                 Get.to(()=>DashboardNoData());
             },
             onRightTap: () {
             Get.to(()=>DashboardNoData());
             },
           ),
           SizedBox(height: 8.h,),
           DashboardButtonRow(
             leftIcon: IconPath.generator,
             leftTitle: "D.Generator",
             rightIcon: IconPath.water,
             rightTitle: "Water Process",
             leftPadding: 6.0,
             onLeftTap: () {
                Get.to(()=>DashboardNoData());
             },
             onRightTap: () {
                 Get.to(()=>DashboardNoData());
             },
           ),
           SizedBox(height: 20.h,),

      ],
    ),
  ),
),
    );
  }
}