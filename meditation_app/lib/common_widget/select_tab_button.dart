import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../common/color_extension.dart';

class SelectTabButton extends StatelessWidget {
  final String title;
  final bool isSelect;
  final VoidCallback onPressed;

  const SelectTabButton({
    super.key,
    required this.title,
    required this.isSelect,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onPressed,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 45.h, // responsive height
              padding: EdgeInsets.symmetric(horizontal: 20.w), // responsive padding
              alignment: Alignment.centerLeft,
              child: Text(
                title,
                style: TextStyle(
                  color: isSelect ? TColor.primary : TColor.secondaryText,
                  fontSize: 16.sp, // responsive font size
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 35.w), // responsive margin
              width: 50.w, // responsive underline width
              height: 2.h,  // responsive underline height
              color: isSelect ? TColor.primary : Colors.transparent,
            )
          ],
        ),
      ),
    );
  }
}