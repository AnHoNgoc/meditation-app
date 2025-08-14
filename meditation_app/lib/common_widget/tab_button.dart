import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../common/color_extension.dart';

class TabButton extends StatelessWidget {
  final String icon;
  final String title;
  final bool isSelect;
  final VoidCallback onPressed;

  const TabButton({
    super.key,
    required this.icon,
    required this.title,
    required this.isSelect,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 44.w, // responsive width
            height: 44.h, // responsive height
            decoration: BoxDecoration(
              color: isSelect ? TColor.primary : Colors.transparent,
              borderRadius: BorderRadius.circular(15.r), // responsive bo góc
            ),
            alignment: Alignment.center,
            child: Image.asset(
              icon,
              width: 22.w, // responsive icon width
              height: 22.h, // responsive icon height
              color: isSelect ? Colors.white : TColor.secondaryText,
            ),
          ),
          SizedBox(height: 4.h), // responsive spacing
          Text(
            title,
            style: TextStyle(
              color: isSelect ? TColor.primary : TColor.secondaryText,
              fontSize: 14.sp, // responsive font size
              fontWeight: FontWeight.w600,
            ),
          )
        ],
      ),
    );
  }
}