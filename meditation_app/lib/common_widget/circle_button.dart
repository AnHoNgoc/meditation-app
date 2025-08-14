import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../common/color_extension.dart';

class CircleButton extends StatelessWidget {
  final String title;
  final bool isSelect;
  final VoidCallback onPressed;

  const CircleButton({
    super.key,
    required this.title,
    required this.isSelect,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      borderRadius: BorderRadius.circular(20.r), // responsive bo góc
      child: Container(
        width: 40.w,  // responsive width
        height: 40.h, // responsive height
        decoration: BoxDecoration(
          color: isSelect ? TColor.primaryText : Colors.white,
          borderRadius: BorderRadius.circular(20.r), // responsive bo góc
          border: Border.all(
            color: TColor.secondaryText,
            width: 1.w, // responsive độ dày viền
          ),
        ),
        alignment: Alignment.center,
        child: Text(
          title,
          style: TextStyle(
            color: isSelect ? Colors.white : TColor.secondaryText,
            fontSize: 14.sp, // responsive font
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}