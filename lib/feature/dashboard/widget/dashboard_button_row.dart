import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task/feature/dashboard/widget/dashboard_button.dart';

class DashboardButtonRow extends StatelessWidget {
  final String leftIcon;
  final String leftTitle;
  final String rightIcon;
  final String rightTitle;
  final double? leftPadding;
  final double? rightPadding;
  final VoidCallback? onLeftTap;
  final VoidCallback? onRightTap;

  const DashboardButtonRow({
    super.key,
    required this.leftIcon,
    required this.leftTitle,
    required this.rightIcon,
    required this.rightTitle,
    this.leftPadding = 8.0,
    this.rightPadding = 8.0,
    this.onLeftTap,
    this.onRightTap,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: onLeftTap,
            child: DashboardButton(
              iconPath: leftIcon,
              title: leftTitle,
              padding: leftPadding,
            ),
          ),
        ),
        SizedBox(width: 8.w),
        Expanded(
          child: GestureDetector(
            onTap: onRightTap,
            child: DashboardButton(
              iconPath: rightIcon,
              title: rightTitle,
              padding: rightPadding,
            ),
          ),
        ),
      ],
    );
  }
}
