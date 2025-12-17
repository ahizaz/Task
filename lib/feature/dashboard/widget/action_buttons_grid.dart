import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ActionButtonData {
  final String iconPath;
  final String label;

  const ActionButtonData({
    required this.iconPath,
    required this.label,
  });
}

class ActionButtonsGrid extends StatelessWidget {
  final List<List<ActionButtonData>> rows;

  const ActionButtonsGrid({
    super.key,
    required this.rows,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(rows.length, (index) {
        return Column(
          children: [
            if (index > 0) SizedBox(height: 8.h),
            _buildButtonRow(rows[index]),
          ],
        );
      }),
    );
  }

  Widget _buildButtonRow(List<ActionButtonData> buttons) {
    return Row(
      children: [
        Expanded(
          child: _buildButton(buttons[0]),
        ),
        SizedBox(width: 8.w),
        Expanded(
          child: _buildButton(buttons[1]),
        ),
      ],
    );
  }

  Widget _buildButton(ActionButtonData data) {
    return Container(
      height: 42.h,
      decoration: BoxDecoration(
        color: Color(0xffFFFFFF),
        borderRadius: BorderRadius.circular(8.r),
        border: Border.all(
          color: Color(0xffB6B8D0),
          width: 1.w,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Image(
              image: AssetImage(data.iconPath),
              width: 24.w,
              height: 24.h,
              fit: BoxFit.cover,
            ),
            SizedBox(width: 8.w),
            Flexible(
              child: Text(
                data.label,
                style: GoogleFonts.inter(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff646984),
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
