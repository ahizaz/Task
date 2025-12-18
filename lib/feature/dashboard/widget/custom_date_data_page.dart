import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task/core/common/widgets/today_data_item.dart';

class CustomDateDataPage extends StatelessWidget {
  const CustomDateDataPage({super.key});

  @override
  Widget build(BuildContext context) {
   return Container(
    width: double.infinity,
    decoration: BoxDecoration(
    color: Color(0xffFFFFFF),
    ),
    child: Padding(
      padding:  EdgeInsets.symmetric(horizontal: 24.w),
      child: Column(
        children: [
          SizedBox(height: 8.h,),
          Row(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                
                  height: 36.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6.w),
                    color: Color(0xffFFFFFF),
                    border: Border.all(
                      color: Color(0xffA5A7B9),
                      width: 1.w
                    )
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          flex: 3,
                          child: Text(
                            "From Date",
                            style: GoogleFonts.inter(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff646984),
                            ),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                          ),
                        ),
                        Icon(
                          Icons.calendar_today,
                          color: Color(0xff646984),
                          size: 13.sp,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(width: 5.w,),
              Expanded(
                 flex: 2,
                child: Container(
            
                  height: 36.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6.w),
                    color: Color(0xffFFFFFF),
                    border: Border.all(
                      color: Color(0xffA5A7B9),
                      width: 1.w
                    )
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Text(
                            "To Date",
                            style: GoogleFonts.inter(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff646984),
                            ),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                          ),
                        ),
                        Icon(
                          Icons.calendar_today,
                          color: Color(0xff646984),
                          size: 13.sp,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
                SizedBox(width: 5.w,),
                Expanded(
                   flex: 1,
                  child: Container(
                    height: 36.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6.w),
                      color: Color(0xffE2EBF1),
                      border: Border.all(
                        color: Color(0xff0096FC),
                        width: 1.w
                      )
                    ),
                    child: Center(
                      child: Icon(Icons.search,weight: 18,color: Color(0xff0096FC),),
                    ),
                  ),
                ),
           
            ],
          ),
          SizedBox(height: 12.h,),
    
      
        ],
      ),
    ),
   );
   
  }
}
