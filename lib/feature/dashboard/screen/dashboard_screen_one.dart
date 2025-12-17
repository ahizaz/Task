import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';
import 'package:task/feature/dashboard/widget/dashboard_appbar.dart';
import 'package:task/feature/dashboard/controller/dashboard_controller.dart';
import 'package:task/feature/dashboard/widget/data_view_widget.dart';
import 'package:task/feature/dashboard/widget/revenue_view_widget.dart';

class DashboardScreenOne extends StatelessWidget {
  const DashboardScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    final DashboardController controller = Get.put(DashboardController());
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color(0xffD9E4F1),
      appBar: DashboardAppBar(),
      body: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: height * 0.83,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(32),
                  topRight: Radius.circular(32),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.only(top: 72.h, left: 24.w, right: 24.w),
                child: Obx(() => controller.isDataView.value
                    ? const DataViewWidget()
                    : const RevenueViewWidget()),
              ),
            ),
          ),
          Positioned(
            top: height * 0.02,
            left: 40,
            right: 40,
            child: Container(
              height: 55,
              decoration: BoxDecoration(
                color: Color(0xffFFFFFF),
                borderRadius: BorderRadius.circular(12.r),
              border: Border.all(
                color: Color(0xffA5A7B9),
                width: 1.w,
              )
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: Obx(
                  () => Row(
                    children: [
                      GestureDetector(
                        onTap: () => controller.toggleToDataView(),
                        child: Row(
                          children: [
                            Container(
                              height: 14,
                              width: 14,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: controller.isDataView.value
                                      ? const Color(0xff0096FC)
                                      : const Color(0xffA5A7B9),
                                  width: 2,
                                ),
                              ),
                              child: Center(
                                child: Container(
                                  height: 7,
                                  width: 7,
                                  decoration: BoxDecoration(
                                    color: controller.isDataView.value
                                        ? const Color(0xff0096FC)
                                        : const Color(0xffA5A7B9),
                                    shape: BoxShape.circle,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 5.w),
                            Text(
                              "Data View",
                              style: GoogleFonts.inter(
                                fontSize: 16.sp,
                                fontWeight: controller.isDataView.value
                                    ? FontWeight.w600
                                    : FontWeight.w400,
                                color: controller.isDataView.value
                                    ? const Color(0xff0096FC)
                                    : const Color(0xff646984),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Spacer(),
                      GestureDetector(
                        onTap: () => controller.toggleToRevenueView(),
                        child: Row(
                          children: [
                            Container(
                              height: 14,
                              width: 14,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: controller.isDataView.value
                                      ? const Color(0xffA5A7B9)
                                      : const Color(0xff0096FC),
                                  width: 2,
                                ),
                              ),
                              child: Center(
                                child: Container(
                                  height: 7,
                                  width: 7,
                                  decoration: BoxDecoration(
                                    color: controller.isDataView.value
                                        ? const Color(0xffA5A7B9)
                                        : const Color(0xff0096FC),
                                    shape: BoxShape.circle,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 5.w),
                            Text(
                              "Revenue View",
                              style: GoogleFonts.inter(
                                fontSize: 16.sp,
                                fontWeight: controller.isDataView.value
                                    ? FontWeight.w400
                                    : FontWeight.w600,
                                color: controller.isDataView.value
                                    ? const Color(0xff646984)
                                    : const Color(0xff0096FC),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
