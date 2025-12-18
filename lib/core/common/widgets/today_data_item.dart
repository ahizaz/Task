import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class DataItem extends StatelessWidget {
  final String label;
  final Color dotColor;
  final String dataValue;
  final String dataPercent;
  final String costValue;
  final String currency;

  const DataItem({
    super.key,
    required this.label,
    this.dotColor = const Color(0xff0096FC),
    required this.dataValue,
    required this.dataPercent,
    required this.costValue,
    this.currency = '৳',
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // Left small band with dot and label
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.w),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: 10.w,
                height: 10.h,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: dotColor,
                ),
              ),
              SizedBox(height: 10.h),
              Text(
                label,
                style: GoogleFonts.inter(
                  fontWeight: FontWeight.w600,
                  fontSize: 12.sp,
                  color: const Color(0xff04063E),
                ),
              )
            ],
          ),
        ),

        // Vertical divider
        Container(width: 1.w, height: 55.h, color: const Color(0xffB6B8D0)),

        // Right content
        Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Data row
                RichText(
                  text: TextSpan(
                    style: GoogleFonts.inter(
                      fontSize: 14.sp,
                      color: const Color(0xff04063E),
                    ),
                    children: [
                      TextSpan(
                        text: 'Data     : ',
                        style: GoogleFonts.inter(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xff646984),
                        ),
                      ),
                      TextSpan(
                        text: ' $dataValue ',
                        style: GoogleFonts.inter(
                          fontWeight: FontWeight.w600,
                          fontSize: 12.sp,
                          color: const Color(0xff04063E),
                        ),
                      ),
                      TextSpan(
                        text: dataPercent,
                        style: GoogleFonts.inter(
                          fontWeight: FontWeight.w600,
                          fontSize: 12.sp,
                          color: const Color(0xff04063E),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 4.h),
                // Cost row
                RichText(
                  text: TextSpan(
                    style: GoogleFonts.inter(
                      fontSize: 14.sp,
                      color: const Color(0xff04063E),
                    ),
                    children: [
                      TextSpan(
                        text: 'Cost     : ',
                        style: GoogleFonts.inter(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xff646984),
                        ),
                      ),
                      TextSpan(
                        text: ' $costValue ',
                        style: GoogleFonts.inter(
                          fontWeight: FontWeight.w600,
                          fontSize: 12.sp,
                          color: const Color(0xff04063E),
                        ),
                      ),
                      TextSpan(
                        text: currency,
                        style: GoogleFonts.inter(
                          fontWeight: FontWeight.w600,
                          fontSize: 12.sp,
                          color: const Color(0xff04063E),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
