import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class RevenueViewWidget extends StatelessWidget {
  const RevenueViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Revenue Overview',
            style: GoogleFonts.inter(
              fontSize: 20.sp,
              fontWeight: FontWeight.w700,
              color: const Color(0xff0B3C6B),
            ),
          ),
          SizedBox(height: 20.h),
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 110.h,
                  decoration: BoxDecoration(
                    color: const Color(0xffFFF8EC),
                    borderRadius: BorderRadius.circular(12.r),
                    border: Border.all(
                      color: const Color(0xffFFB800).withOpacity(0.3),
                      width: 1.w,
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(12.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Total Revenue',
                          style: GoogleFonts.inter(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500,
                            color: const Color(0xff646984),
                          ),
                        ),
                        SizedBox(height: 8.h),
                        Text(
                          '\$45,890',
                          style: GoogleFonts.inter(
                            fontSize: 24.sp,
                            fontWeight: FontWeight.w700,
                            color: const Color(0xffB36B00),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(width: 12.w),
              Expanded(
                child: Container(
                  height: 110.h,
                  decoration: BoxDecoration(
                    color: const Color(0xffFFF2E6),
                    borderRadius: BorderRadius.circular(12.r),
                    border: Border.all(
                      color: const Color(0xffFF8C42).withOpacity(0.3),
                      width: 1.w,
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(12.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'This Month',
                          style: GoogleFonts.inter(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500,
                            color: const Color(0xff646984),
                          ),
                        ),
                        SizedBox(height: 8.h),
                        Text(
                          '\$12,340',
                          style: GoogleFonts.inter(
                            fontSize: 24.sp,
                            fontWeight: FontWeight.w700,
                            color: const Color(0xffFF8C42),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 16.h),
          Container(
            height: 180.h,
            decoration: BoxDecoration(
              color: const Color(0xffFFFBF5),
              borderRadius: BorderRadius.circular(12.r),
              border: Border.all(
                color: const Color(0xffFFB800).withOpacity(0.2),
                width: 1.w,
              ),
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.trending_up_rounded,
                    size: 48.sp,
                    color: const Color(0xffB36B00),
                  ),
                  SizedBox(height: 12.h),
                  Text(
                    'Revenue Chart',
                    style: GoogleFonts.inter(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                      color: const Color(0xffB36B00),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 16.h),
          Container(
            decoration: BoxDecoration(
              color: const Color(0xffFFFAF0),
              borderRadius: BorderRadius.circular(12.r),
              border: Border.all(
                color: const Color(0xffFFE4B3),
                width: 1.w,
              ),
            ),
            child: Padding(
              padding: EdgeInsets.all(16.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Recent Transactions',
                    style: GoogleFonts.inter(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                      color: const Color(0xff0B3C6B),
                    ),
                  ),
                  SizedBox(height: 12.h),
                  _buildActivityItem('Payment Received', '\$2,500'),
                  _buildActivityItem('Subscription Renewed', '\$150'),
                  _buildActivityItem('Product Sale', '\$890'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildActivityItem(String title, String subtitle) {
    return Padding(
      padding: EdgeInsets.only(bottom: 12.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: GoogleFonts.inter(
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
              color: const Color(0xff25425A),
            ),
          ),
          Text(
            subtitle,
            style: GoogleFonts.inter(
              fontSize: 13.sp,
              fontWeight: FontWeight.w400,
              color: const Color(0xff646984),
            ),
          ),
        ],
      ),
    );
  }
}
