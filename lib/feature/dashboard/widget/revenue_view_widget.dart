import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';


class RevenueViewWidget extends StatelessWidget {
  const RevenueViewWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
     width: double.infinity,
     decoration: BoxDecoration(
      color: Color(0xffFFFFFF),
     ),
    child: Column(
      children: [
        SizedBox(height: 20.h,),
          Center(
       child: SizedBox(
         width: 150,
         height: 150,
         child: Stack(
           alignment: Alignment.center,
           children: [
             SizedBox(
               width: 150.w,
               height: 150.h,
               child: Transform(
                 alignment: Alignment.center,
                 transform: Matrix4.rotationY(3.14159),
                 child: CircularProgressIndicator(
                   value:  0.55 ,
                   strokeWidth: 20,
                   strokeCap: StrokeCap.round,
                   backgroundColor: Colors.grey.shade200,
                   valueColor: AlwaysStoppedAnimation<Color>(
                     Colors.blue
                   ),
                 ),
               ),
             ),
             Column(
               mainAxisSize: MainAxisSize.min,
               children: [
                 Text(
                 '8897455',
                  style: GoogleFonts.inter( 
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff04063E)
                  ),
                 ),
                 Text(
                   'tk',
                   style: GoogleFonts.inter(  
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff04063E)
                   )
                 ),
               ],
             ),
           ],
         ),
       ),
     ),
     SizedBox(
      height: 30.h,

     ),
      _DataCostCard(),
      ],
    ),
    );
  }
}

class _DataCostCard extends StatefulWidget {
  const _DataCostCard({Key? key}) : super(key: key);

  @override
  State<_DataCostCard> createState() => _DataCostCardState();
}

class _DataCostCardState extends State<_DataCostCard> {
  bool _isExpanded = false;
  final int _total = 4;

  @override
  Widget build(BuildContext context) {
    final halfCount = (_total / 2).floor();

    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 12.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: ExpansionTile(
        initiallyExpanded: _isExpanded,
        onExpansionChanged: (v) => setState(() => _isExpanded = v),
        tilePadding: EdgeInsets.zero,
        leading: Container(
          width: 36.w,
          height: 36.w,
          margin: EdgeInsets.only(left: 12.w, right: 8.w, top: 6.h, bottom: 6.h),
          decoration: BoxDecoration(
            color: Color(0xffF2F6FB),
            borderRadius: BorderRadius.circular(8.r),
          ),
          child: Center(
            child: Icon(
              Icons.bar_chart,
              color: Color(0xff273656),
              size: 18.sp,
            ),
          ),
        ),
        title: Padding(
          padding: EdgeInsets.symmetric(vertical: 12.h),
          child: Text(
            'Data & Cost Info',
            style: GoogleFonts.inter(
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
              color: Color(0xff04063E),
            ),
          ),
        ),
        // no subtitle; children will render the full list when expanded
        trailing: Container(
          margin: EdgeInsets.only(right: 12.w, top: 6.h, bottom: 6.h),
          width: 36.w,
          height: 36.w,
          decoration: BoxDecoration(
            color: Color(0xff04A3FF),
            shape: BoxShape.circle,
          ),
          child: Center(
            child: AnimatedSwitcher(
              duration: Duration(milliseconds: 200),
              transitionBuilder: (child, anim) => ScaleTransition(scale: anim, child: child),
              child: Icon(
                _isExpanded ? Icons.keyboard_double_arrow_up : Icons.keyboard_double_arrow_down,
                key: ValueKey<bool>(_isExpanded),
                color: Colors.white,
                size: 20.sp,
              ),
            ),
          ),
        ),
        children: [
          Container(
            height: 1.h,
            color: Colors.grey.shade300,
            margin: EdgeInsets.symmetric(horizontal: 8.w),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: List.generate(_total, (index) {
                final i = index + 1;
                return Padding(
                  padding: EdgeInsets.only(bottom: index == _total - 1 ? 0 : 12.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                           "Data $i :",
                           style: GoogleFonts.inter( 
                            color: Color(0xff646984),
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                           ),
                          ),
                          Text("   2798.50 (29.53%)",
                           style: GoogleFonts.inter( 
                            color: Color(0xff04063E),
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w600,
                           ),
                          )

                        ],
                      ),
                      SizedBox(height: 6.h),
                     Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                           "Cost  $i :",
                           style: GoogleFonts.inter( 
                            color: Color(0xff646984),
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                           ),
                          ),
                          Text("   35689 ৳",
                           style: GoogleFonts.inter( 
                            color: Color(0xff04063E),
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w600,
                           ),
                          )

                        ],
                      ),
                    ],
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
