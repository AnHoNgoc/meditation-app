import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meditation_app/common/color_extension.dart';
import '../../common_widget/circle_button.dart';
import '../../common_widget/round_button.dart';
import '../main_tabview/main_tabview_screen.dart';

class RemindersScreen extends StatefulWidget {
  const RemindersScreen({super.key});

  @override
  State<RemindersScreen> createState() => _RemindersScreenState();
}

class _RemindersScreenState extends State<RemindersScreen> {
  List dayArr = [
    {"name": "SU", "is_select": false},
    {"name": "M", "is_select": false},
    {"name": "T", "is_select": false},
    {"name": "W", "is_select": false},
    {"name": "TH", "is_select": false},
    {"name": "F", "is_select": false},
    {"name": "S", "is_select": false},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                constraints: BoxConstraints(minHeight: 1.sh - 180.h),
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 15.h),
                    Text(
                      "What time would you\nlike to meditate?",
                      style: TextStyle(
                        color: TColor.primaryText,
                        fontSize: 24.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(height: 15.h),
                    Text(
                      "Any time you can choose but We recommend\nfirst thing in the morning.",
                      style: TextStyle(
                        color: TColor.secondaryText,
                        fontSize: 16.sp,
                      ),
                    ),
                    SizedBox(height: 35.h),
                    Container(
                      height: 200.h,
                      decoration: BoxDecoration(
                        color: const Color(0xffF5F5F9),
                        borderRadius: BorderRadius.circular(20.r),
                      ),
                      child: CupertinoDatePicker(
                        mode: CupertinoDatePickerMode.time,
                        onDateTimeChanged: (DateTime newDate) {},
                        use24hFormat: false,
                        minuteInterval: 1,
                      ),
                    ),
                    SizedBox(height: 35.h),
                    Text(
                      "What day would you\nlike to meditate?",
                      style: TextStyle(
                        color: TColor.primaryText,
                        fontSize: 24.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(height: 15.h),
                    Text(
                      "Everyday is best, but we recommend picking\nat least five.",
                      style: TextStyle(
                        color: TColor.secondaryText,
                        fontSize: 16.sp,
                      ),
                    ),
                    SizedBox(height: 35.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: dayArr.map((dObj) {
                        return CircleButton(
                          title: dObj["name"],
                          isSelect: dObj["is_select"],
                          onPressed: () {
                            setState(() {
                              dayArr[dayArr.indexOf(dObj)]["is_select"] =
                              !(dObj["is_select"] as bool? ?? false);
                            });
                          },
                        );
                      }).toList(),
                    )
                  ],
                ),
              ),
              RoundButton(
                title: "SAVE",
                onPressed: () {
                  context.push(const MainTabViewScreen());
                },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "NO THANKS",
                      style: TextStyle(
                        color: TColor.primaryText,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}