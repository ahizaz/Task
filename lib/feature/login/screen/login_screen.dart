import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task/core/common/styles/global_text_styles.dart';
import 'package:task/core/common/widgets/custom_text_field.dart';
import 'package:task/core/utils/constants/colors.dart';
import 'package:task/core/utils/constants/image_path.dart';
import 'package:task/feature/login/controller/login_controller.dart';
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final LoginController controller = Get.put(LoginController());
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: AppColors.backgroundColor,
      body: Column(
        children: [
          SizedBox(height: 60.h,),
          Center(child: Image.asset(ImagePath.applogo,width: 96.w,height: 98.h,fit: BoxFit.cover,)),
          SizedBox(height: 16.h,),
          Text("SCUBE",style: GlobalTextStyles.appTitle()),
          Text("Control & Monitoring System",style: GlobalTextStyles.subtitle()),
          SizedBox(height: 80.h,),
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.r),
                  topRight: Radius.circular(30.r),
                ),
                
              ),
              child: SingleChildScrollView(
                padding: EdgeInsets.only(
                  left: 12.w,
                  right: 12.w,
                  bottom: MediaQuery.of(context).viewInsets.bottom + 20.h,
                ),
                child: Column(
                  children: [
                    SizedBox(height: 32.h,),
                    Center(child: Text("Login",style: GoogleFonts.inter( 
                     fontSize: 24.sp,
                     fontWeight: FontWeight.w700,
                     color: AppColors.black,
                  ),),),
                  SizedBox(height: 24.h,),

              
                  CustomTextField(
                    controller: controller.usernameController,
                    hintText: 'Username',
                  ),
                  SizedBox(height: 12.h,),
                  
                 
                  Obx(
                    () => CustomTextField(
                      controller: controller.passwordController,
                      hintText: 'Password',
                      obscureText: controller.obscurePassword.value,
                      suffixIcon: IconButton(
                        icon: Icon(
                          controller.obscurePassword.value ? Icons.visibility_outlined : Icons.visibility_off_outlined,
                          color: Color(0xff9CA3AF),
                        ),
                        onPressed: controller.togglePasswordVisibility,
                      ),
                    ),
                  ),
                  SizedBox(height: 8.h,),
                Align(
       alignment: Alignment.centerRight,
      child: Text(
        "Forget password?",
         style: GoogleFonts.inter(
         fontWeight: FontWeight.w500,
      fontSize: 14,
          color: Color(0xff5E5E5E),
      decoration: TextDecoration.underline,
      decorationColor: Color(0xff5E5E5E), 
    ),
  ),
),
    SizedBox(height: 20.h,),
    Container(
      width: double.infinity,
      height: 60.h,
      decoration: BoxDecoration(
        color: Color(0xff0096FC),
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Center(
        child: Text("Login",style: GoogleFonts.inter( 
          fontSize: 18.sp,
          fontWeight: FontWeight.w600,
          color: Color(0xffFFFFFF)
        ),),
      ),
    ),
    SizedBox(height: 8.h,),
    Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        
        Text("Don’t have any account? ",style: GoogleFonts.inter( 
          fontSize: 12.sp,
          fontWeight: FontWeight.w500,
          color: Color(0xff5E5E5E)
        ),),
        Text("Register Now",style: GoogleFonts.inter( 
          fontSize: 14.sp,
          fontWeight: FontWeight.w500,
          color: Color(0xff0096FC)
        ),)
      ],
    )

                  ],
                ),
              ),
            ),
          ),
        ],
      ),

    );
  }
}