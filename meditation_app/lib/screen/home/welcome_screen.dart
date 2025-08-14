import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meditation_app/common/color_extension.dart';
import '../../common_widget/round_button.dart';
import 'choose_topic_screen.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff8E97FD),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Image.asset(
            "assets/img/welcome.png",
            width: 1.sw,
            fit: BoxFit.fitWidth,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: SafeArea(
              child: Column(
                children: [
                  SizedBox(height: 15.h),
                  Image.asset(
                    "assets/img/logo.png",
                    width: 0.5.sw,
                  ),
                  SizedBox(height: 50.h),
                  Text(
                    "Hi Afsar, Welcome",
                    style: TextStyle(
                      color: TColor.primaryTextW,
                      fontSize: 30.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(height: 8.h),
                  Text(
                    "to Silent Moon",
                    style: TextStyle(
                      color: TColor.primaryTextW,
                      fontSize: 30.sp,
                    ),
                  ),
                  SizedBox(height: 25.h),
                  Text(
                    "Explore the app, Find some peace of mind to prepare for meditation.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: TColor.primaryTextW,
                      fontSize: 16.sp,
                    ),
                  ),
                  const Spacer(),
                  RoundButton(
                    title: "GET STARTED",
                    type: RoundButtonType.secondary,
                    onPressed: () {
                      context.push(const ChooseTopicScreen());
                    },
                  ),
                  SizedBox(height: 50.h),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}