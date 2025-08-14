import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meditation_app/screen/login/sign_up_screen.dart';

import '../../common/color_extension.dart';
import '../../common_widget/round_button.dart';
import 'login_screen.dart';

class StartUpScreen extends StatefulWidget {
  const StartUpScreen({super.key});

  @override
  State<StartUpScreen> createState() => _StartUpScreenState();
}

class _StartUpScreenState extends State<StartUpScreen> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.leanBack);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            "assets/img/startup_top.png",
            width: double.maxFinite,
            fit: BoxFit.fitWidth,
          ),
          const Spacer(),
          Text(
            "We are what we do",
            style: TextStyle(
              color: TColor.primaryText,
              fontSize: 30.sp, // responsive font
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 15.h), // responsive spacing
          Text(
            "Thousand of people are using silent moon\nfor smalls meditation",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: TColor.secondaryText,
              fontSize: 16.sp, // responsive font
            ),
          ),
          const Spacer(),
          RoundButton(
            title: "SIGN UP",
            onPressed: () {
              context.push(const SignUpScreen());
            },
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "ALREADY HAVE AN ACCOUNT?",
                style: TextStyle(
                  color: TColor.secondaryText,
                  fontSize: 14.sp, // responsive font
                  fontWeight: FontWeight.w600,
                ),
              ),
              TextButton(
                onPressed: () {
                  context.push(const LoginScreen());
                },
                child: Text(
                  "LOG IN",
                  style: TextStyle(
                    color: TColor.primary,
                    fontSize: 14.sp, // responsive font
                    fontWeight: FontWeight.w600,
                  ),
                ),
              )
            ],
          ),
          const Spacer(),
        ],
      ),
    );
  }
}