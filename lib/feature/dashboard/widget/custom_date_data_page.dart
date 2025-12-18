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
    child: SingleChildScrollView(
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
        Container(
    width: double.infinity,
        
    decoration: BoxDecoration(
      color: const Color(0xffFFFFFF),
      borderRadius: BorderRadius.circular(10.r),
      border: Border.all(color: const Color(0xffA5A7B9), width: 1.w),
    ),
    child: Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 14.h, horizontal: 33.w),
          child: Row(
            children: [
              Expanded(
                child: Text(
                  "Energy Chart",
                  style: GoogleFonts.inter(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w600,
                      color: const Color(0xff04063E)),
                ),
              ),
              SizedBox(width: 8.w),
              Flexible(
                child: Align(
                  alignment: Alignment.centerRight,
                  child: FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(
                      "5.53 kw",
                      style: GoogleFonts.inter(
                          fontSize: 32.sp,
                          fontWeight: FontWeight.w600,
                          color: const Color(0xff04063E)),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 8.h),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.w),
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6.r),
              color: const Color(0xffFFFFFF),
              border: Border.all(color: const Color(0xffB6B8D0), width: 1.w),
            ),
            child: DataItem(
              label: 'Data A',
              dotColor: const Color(0xff0096FC),
              dataValue: '2798.50',
              dataPercent: ' (29.53%)',
              costValue: '35689',
              currency: '৳',
            ),
          ),
        ),
        SizedBox(height: 8.h,),
              Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.w),
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6.r),
              color: const Color(0xffFFFFFF),
              border: Border.all(color: const Color(0xffB6B8D0), width: 1.w),
            ),
            child: DataItem(
              label: 'Data B',
              dotColor: const Color(0xff7BD7FF),
              dataValue: '72598.50',
              dataPercent: ' (35.39%)',
              costValue: '5259689',
              currency: '৳',
            ),
          ),
        ),
          SizedBox(height: 8.h,),
              Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.w),
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6.r),
              color: const Color(0xffFFFFFF),
              border: Border.all(color: const Color(0xffB6B8D0), width: 1.w),
            ),
            child: DataItem(
              label: 'Data C',
              dotColor: const Color(0xff9747FF),
              dataValue: '6598.36',
              dataPercent: ' (83.90%)',
              costValue: '5698756',
              currency: '৳',
            ),
          ),
        ),
           SizedBox(height: 8.h,),
              Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.w),
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6.r),
              color: const Color(0xffFFFFFF),
              border: Border.all(color: const Color(0xffB6B8D0), width: 1.w),
            ),
            child: DataItem(
              label: 'Data D',
              dotColor: const Color(0xffFF9A00),
              dataValue: '6598.26',
              dataPercent: ' (36.59%)',
              costValue: '356987',
              currency: '৳',
            ),
          ),
        ),
          SizedBox(height: 8.h,),
      ],
    ),
        )
        ,
        SizedBox(height: 12.h),
        // Duplicate the same data container below to stack vertically
        Container(
    width: double.infinity,
        
    decoration: BoxDecoration(
      color: const Color(0xffFFFFFF),
      borderRadius: BorderRadius.circular(10.r),
      border: Border.all(color: const Color(0xffA5A7B9), width: 1.w),
    ),
    child: Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 14.h, horizontal: 33.w),
          child: Row(
            children: [
              Expanded(
                child: Text(
                  "Energy Chart",
                  style: GoogleFonts.inter(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w600,
                      color: const Color(0xff04063E)),
                ),
              ),
              SizedBox(width: 8.w),
              Flexible(
                child: Align(
                  alignment: Alignment.centerRight,
                  child: FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(
                      "5.53 kw",
                      style: GoogleFonts.inter(
                          fontSize: 32.sp,
                          fontWeight: FontWeight.w600,
                          color: const Color(0xff04063E)),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 8.h),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.w),
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6.r),
              color: const Color(0xffFFFFFF),
              border: Border.all(color: const Color(0xffB6B8D0), width: 1.w),
            ),
            child: DataItem(
              label: 'Data A',
              dotColor: const Color(0xff0096FC),
              dataValue: '2798.50',
              dataPercent: ' (29.53%)',
              costValue: '35689',
              currency: '৳',
            ),
          ),
        ),
        SizedBox(height: 8.h,),
              Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.w),
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6.r),
              color: const Color(0xffFFFFFF),
              border: Border.all(color: const Color(0xffB6B8D0), width: 1.w),
            ),
            child: DataItem(
              label: 'Data B',
              dotColor: const Color(0xff7BD7FF),
              dataValue: '72598.50',
              dataPercent: ' (35.39%)',
              costValue: '5259689',
              currency: '৳',
            ),
          ),
        ),
          SizedBox(height: 8.h,),
              Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.w),
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6.r),
              color: const Color(0xffFFFFFF),
              border: Border.all(color: const Color(0xffB6B8D0), width: 1.w),
            ),
            child: DataItem(
              label: 'Data C',
              dotColor: const Color(0xff9747FF),
              dataValue: '6598.36',
              dataPercent: ' (83.90%)',
              costValue: '5698756',
              currency: '৳',
            ),
          ),
        ),
           SizedBox(height: 8.h,),
              Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.w),
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6.r),
              color: const Color(0xffFFFFFF),
              border: Border.all(color: const Color(0xffB6B8D0), width: 1.w),
            ),
            child: DataItem(
              label: 'Data D',
              dotColor: const Color(0xffFF9A00),
              dataValue: '6598.26',
              dataPercent: ' (36.59%)',
              costValue: '356987',
              currency: '৳',
            ),
          ),
        ),
          SizedBox(height: 8.h,),
      ],
    ),
        ),
        SizedBox(height: 8.h,),
      ],
    ),
    ),
   );
   
  }
}
