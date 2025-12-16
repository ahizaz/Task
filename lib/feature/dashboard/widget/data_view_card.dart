import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task/core/utils/constants/icon_path.dart';

class DataViewCard extends StatelessWidget {
  final String iconPath;
  final Color indicatorColor;
  final String title;
  final String statusText;
  final Color statusColor;
  final String data1;
  final String data2;

  const DataViewCard({
    super.key,
    required this.iconPath,
    required this.indicatorColor,
    this.title = "Data View",
    required this.statusText,
    required this.statusColor,
    this.data1 = "Data 1      : 55505.63",
    this.data2 = "Data 2     : 58805.63",
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.w),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xffE5F4FE),
          borderRadius: BorderRadius.circular(4.r),
          border: Border.all(color: Color(0xffA5A7B9), width: 1),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            children: [
              Image.asset(
                iconPath,
                width: 24.w,
                height: 24.h,
                fit: BoxFit.cover,
              ),
              SizedBox(width: 12.w),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 12.w,
                        height: 12.h,
                        decoration: BoxDecoration(
                          color: indicatorColor,
                          borderRadius: BorderRadius.circular(2.r),
                        ),
                      ),
                      SizedBox(width: 12.w),
                      Text(
                        title,
                        style: GoogleFonts.inter(
                          fontWeight: FontWeight.w500,
                          fontSize: 14.sp,
                          color: Color(0xff04063E),
                        ),
                      ),
                      SizedBox(width: 14.w),
                      Text(
                        statusText,
                        style: GoogleFonts.inter(
                          fontWeight: FontWeight.w500,
                          fontSize: 10.sp,
                          color: statusColor,
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 4.h),
                  Text(
                    data1,
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.w400,
                      fontSize: 12.sp,
                      color: Color(0xff04063E),
                    ),
                  ),
                  SizedBox(height: 4.h),
                  Text(
                    data2,
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.w400,
                      fontSize: 12.sp,
                      color: Color(0xff04063E),
                    ),
                  )
                ],
              ),
              Spacer(),
              Image(
                image: AssetImage(IconPath.cevronright),
                width: 24.w,
                height: 24.h,
                fit: BoxFit.cover,
              )
            ],
          ),
        ),
      ),
    );
  }
}
