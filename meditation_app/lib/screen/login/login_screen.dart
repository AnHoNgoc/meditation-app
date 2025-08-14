import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meditation_app/common/color_extension.dart';
import 'package:meditation_app/screen/login/sign_up_screen.dart';
import '../../common_widget/round_button.dart';
import '../../common_widget/round_text_field.dart';
import '../home/welcome_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: 1.sh,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Image.asset(
                    "assets/img/login_top.png",
                    width: double.maxFinite,
                    fit: BoxFit.fitWidth,
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.w),
                        child: Row(
                          children: [
                            InkWell(
                              onTap: () {
                                context.pop();
                              },
                              child: Image.asset(
                                "assets/img/back.png",
                                width: 55.w,
                                height: 55.w,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 25.h),
                      Text(
                        "Welcome Back!",
                        style: TextStyle(
                          color: TColor.primaryText,
                          fontSize: 28.sp,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(height: 25.h),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.w),
                        child: MaterialButton(
                          onPressed: () {},
                          minWidth: double.maxFinite,
                          elevation: 0,
                          color: const Color(0xff8E97FD),
                          height: 60.h,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.r)),
                          child: Row(
                            children: [
                              SizedBox(width: 15.w),
                              Image.asset(
                                'assets/img/fb.png',
                                width: 25.w,
                                height: 25.w,
                              ),
                              Expanded(
                                child: Text(
                                  "CONTINUE WITH FACEBOOK",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              SizedBox(width: 40.w),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 25.h),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.w),
                        child: MaterialButton(
                          onPressed: () {},
                          minWidth: double.maxFinite,
                          elevation: 0,
                          color: Colors.white,
                          height: 60.h,
                          shape: RoundedRectangleBorder(
                              side: BorderSide(
                                  color: TColor.tertiary, width: 1.w),
                              borderRadius: BorderRadius.circular(30.r)),
                          child: Row(
                            children: [
                              SizedBox(width: 15.w),
                              Image.asset(
                                'assets/img/google.png',
                                width: 25.w,
                                height: 25.w,
                              ),
                              Expanded(
                                child: Text(
                                  "CONTINUE WITH GOOGLE",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: TColor.primaryText,
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              SizedBox(width: 40.w),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 35.h),
              Text(
                "OR LOG IN WITH EMAIL",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: TColor.secondaryText,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(height: 35.h),
              RoundTextField(hintText: "Email address"),
              SizedBox(height: 20.h),
              RoundTextField(
                hintText: "Password",
                obscureText: true,
              ),
              SizedBox(height: 20.h),
              RoundButton(
                title: "LOG IN",
                onPressed: () {
                  context.push(const WelcomeScreen());
                },
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  "Forgot Password?",
                  style: TextStyle(
                    color: TColor.primaryText,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "CREATE A NEW ACCOUNT?",
                    style: TextStyle(
                      color: TColor.secondaryText,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      context.push(const SignUpScreen());
                    },
                    child: Text(
                      "SIGN UP",
                      style: TextStyle(
                        color: TColor.primary,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  )
                ],
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}