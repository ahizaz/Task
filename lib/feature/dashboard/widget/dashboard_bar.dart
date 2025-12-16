import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class DashboardBar extends StatelessWidget {
  const DashboardBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 39.h,
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: const Color(0xffB6B8D0),
            width: 1.w,
          ),
        ),
      ),
      child: Row(
        children: [
          _buildTab('Summery', isActive: true),
          _buildTab('SLD', isActive: false),
          _buildTab('Data', isActive: false),
        ],
      ),
    );
  }
}

Widget _buildTab(String title, {required bool isActive}) {
  return Expanded(
    child: Container(
      decoration: BoxDecoration(
        color: isActive ? const Color(0xff0096FC) : Colors.transparent,

        // ✅ শুধু active tab-এ top radius
        borderRadius: isActive
            ? BorderRadius.only(
                topLeft: Radius.circular(12.r),
                topRight: Radius.circular(12.r),
              )
            : BorderRadius.zero,

        border: Border(
          bottom: BorderSide(
            color:
                isActive ? const Color(0xff00A8FF) : Colors.transparent,
            width: 1,
          ),
        ),
      ),
      child: Center(
        child: Text(
          title,
          style: GoogleFonts.inter(
            fontSize: 14.sp,
            fontWeight: FontWeight.w700,
            color:
                isActive ? Colors.white : const Color(0xff757575),
          ),
        ),
      ),
    ),
  );
}
