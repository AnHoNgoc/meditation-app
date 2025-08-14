import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../common/color_extension.dart';

class RoundTextField extends StatelessWidget {
  final String hintText;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final bool? obscureText;
  final Widget? right;

  const RoundTextField({
    super.key,
    required this.hintText,
    this.controller,
    this.keyboardType,
    this.obscureText,
    this.right,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.h, // chiều cao responsive
      margin: EdgeInsets.symmetric(horizontal: 20.w), // margin responsive
      padding: EdgeInsets.only(top: 8.h), // padding responsive
      decoration: BoxDecoration(
        color: TColor.txtBG,
        borderRadius: BorderRadius.circular(15.r), // bo góc responsive
      ),
      child: TextField(
        controller: controller,
        keyboardType: keyboardType,
        obscureText: obscureText ?? false,
        style: TextStyle(
          color: TColor.primaryText,
          fontSize: 16.sp, // font responsive
        ),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 20.w), // padding text responsive
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          hintText: hintText,
          suffixIcon: right,
          hintStyle: TextStyle(
            color: TColor.secondaryText,
            fontSize: 16.sp, // font hint responsive
          ),
        ),
      ),
    );
  }
}