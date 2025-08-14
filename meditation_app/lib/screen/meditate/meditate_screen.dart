import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../../common/color_extension.dart';
import '../home/reminders_screen.dart';

class MeditateScreen extends StatefulWidget {
  const MeditateScreen({super.key});

  @override
  State<MeditateScreen> createState() => _MeditateScreenState();
}

class _MeditateScreenState extends State<MeditateScreen> {
  int selectIndex = 0;

  List catArr = [
    {"icon": "assets/img/all.png", "title": "All"},
    {"icon": "assets/img/fav_m.png", "title": "My"},
    {"icon": "assets/img/anxious.png", "title": "Anxious"},
    {"icon": "assets/img/sleep_btn.png", "title": "Sleep"},
    {"icon": "assets/img/kids.png", "title": "Kids"},
  ];

  List dataArr = [
    {"image": "assets/img/m1.png", "title": "7 Days of Calm"},
    {"image": "assets/img/m2.png", "title": "Anxiety Release"},
    {"image": "assets/img/m4.png", "title": "Reduce Anxiety"},
    {"image": "assets/img/m3.png", "title": "Happiness"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SafeArea(
              bottom: false,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Meditate",
                      style: TextStyle(
                        color: TColor.primaryText,
                        fontSize: 28.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(height: 15.h),
                    Text(
                      "we can learn how to recognize when our minds are doing their normal everyday acrobatics.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: TColor.secondaryText,
                        fontSize: 16.sp,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 120.h,
              child: ListView.separated(
                padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 20.w),
                scrollDirection: Axis.horizontal,
                itemCount: catArr.length,
                itemBuilder: (context, index) {
                  var cObj = catArr[index];
                  return InkWell(
                    onTap: () {
                      selectIndex = index;
                      setState(() {});
                    },
                    child: Column(
                      children: [
                        Container(
                          width: 55.w,
                          height: 55.h,
                          decoration: BoxDecoration(
                            color: selectIndex == index ? TColor.primary : const Color(0xffA0A3B1),
                            borderRadius: BorderRadius.circular(20.r),
                          ),
                          alignment: Alignment.center,
                          child: Image.asset(
                            cObj["icon"],
                            width: 25.w,
                            height: 25.h,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 4.h),
                        Text(
                          cObj["title"],
                          style: TextStyle(
                            color: selectIndex == index ? TColor.primary : TColor.secondaryText,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  );
                },
                separatorBuilder: (context, index) => SizedBox(width: 20.w),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15.w),
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: Color(0xffF1DDCF),
                borderRadius: BorderRadius.circular(12.r),
              ),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Image.asset(
                    "assets/img/dailyCalm.png",
                    width: double.maxFinite,
                    fit: BoxFit.fitWidth,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.h),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Daily Thought",
                                style: TextStyle(
                                  color: TColor.primaryText,
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              SizedBox(height: 8.h),
                              Text(
                                "APP 30 . PAUSE PRACTICE",
                                style: TextStyle(
                                  color: TColor.primaryText,
                                  fontSize: 11.sp,
                                ),
                              ),
                            ],
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Image.asset(
                            "assets/img/play_black.png",
                            width: 40.w,
                            height: 40.h,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            MasonryGridView.count(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 12.w),
              crossAxisCount: 2,
              mainAxisSpacing: 12.h,
              crossAxisSpacing: 12.w,
              itemCount: dataArr.length,
              itemBuilder: (context, index) {
                var height = index % 4 == 0 || index % 4 == 2 ? 0.55.sw : 0.45.sw;
                var cObj = dataArr[index] as Map? ?? {};

                return InkWell(
                  borderRadius: BorderRadius.circular(10.r),
                  onTap: () {
                    context.push(const RemindersScreen());
                  },
                  child: Container(
                    height: height,
                    alignment: Alignment.center,
                    margin: EdgeInsets.all(4.w),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    child: Stack(
                      alignment: Alignment.topCenter,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10.r),
                            topRight: Radius.circular(10.r),
                          ),
                          child: Image.asset(
                            cObj["image"],
                            width: double.maxFinite,
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(10.r),
                                bottomRight: Radius.circular(10.r),
                              ),
                              child: BackdropFilter(
                                filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                                child: Container(
                                  width: double.maxFinite,
                                  color: Colors.black12,
                                  padding: EdgeInsets.all(15.w),
                                  child: Text(
                                    cObj["title"],
                                    maxLines: 2,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18.sp,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}