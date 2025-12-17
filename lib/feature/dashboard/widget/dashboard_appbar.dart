import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task/core/utils/constants/icon_path.dart';

class DashboardAppBar extends StatelessWidget implements PreferredSizeWidget {
  const DashboardAppBar({super.key});

  @override
  Size get preferredSize => Size.fromHeight(70.h);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xffFFFFFF),
      elevation: 5,
      centerTitle: true,
            toolbarHeight: 90.h,
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
    );
  }
}
