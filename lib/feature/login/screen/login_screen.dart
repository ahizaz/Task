import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task/core/utils/constants/colors.dart';
import 'package:task/core/utils/constants/image_path.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
        SizedBox(height: 80.h,),
        SvgPicture.asset(ImagePath.applogo,fit: BoxFit.cover,height: 98.h,width: 96.w,),
        ],
      ),

    );
  }
}