import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../common/color_extension.dart';

enum RoundButtonType { primary, secondary }

class RoundButton extends StatelessWidget {
  final String title;
  final RoundButtonType type;
  final VoidCallback onPressed;

  const RoundButton({
    super.key,
    required this.title,
    this.type = RoundButtonType.primary,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w), // responsive padding
      child: MaterialButton(
        onPressed: onPressed,
        minWidth: double.maxFinite,
        elevation: 0,
        color: type == RoundButtonType.primary
            ? TColor.primary
            : TColor.tertiary,
        height: 60.h, // responsive height
        shape: RoundedRectangleBorder(
          side: BorderSide.none,
          borderRadius: BorderRadius.circular(30.r), // responsive border radius
        ),
        child: Text(
          title,
          style: TextStyle(
            color: type == RoundButtonType.primary
                ? Colors.white
                : TColor.primaryText,
            fontSize: 14.sp, // responsive font size
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}