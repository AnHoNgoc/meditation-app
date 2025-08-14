import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meditation_app/screen/sleep/sleep_stories_detail_screen.dart';
import '../../common/color_extension.dart';

class SleepScreen extends StatefulWidget {
  const SleepScreen({super.key});

  @override
  State<SleepScreen> createState() => _SleepScreenState();
}

class _SleepScreenState extends State<SleepScreen> {
  int selectIndex = 0;

  final List catArr = [
    {"icon": "assets/img/all.png", "title": "All"},
    {"icon": "assets/img/fav_m.png", "title": "My"},
    {"icon": "assets/img/anxious.png", "title": "Anxious"},
    {"icon": "assets/img/sleep_btn.png", "title": "Sleep"},
    {"icon": "assets/img/kids.png", "title": "Kids"},
  ];

  final List listArr = [
    {"image": "assets/img/mu1.png", "title": "Night Island", "subtitle": "45 MIN . SLEEP MUSIC"},
    {"image": "assets/img/mu2.png", "title": "Sweet Sleep", "subtitle": "45 MIN . SLEEP MUSIC"},
    {"image": "assets/img/mu3.png", "title": "Good Night", "subtitle": "45 MIN . SLEEP MUSIC"},
    {"image": "assets/img/mu4.png", "title": "Moon Clouds", "subtitle": "45 MIN . SLEEP MUSIC"},
    {"image": "assets/img/mu2.png", "title": "Night Island", "subtitle": "45 MIN . SLEEP MUSIC"},
    {"image": "assets/img/mu1.png", "title": "Sweet Sleep", "subtitle": "45 MIN . SLEEP MUSIC"},
    {"image": "assets/img/mu4.png", "title": "Good Night", "subtitle": "45 MIN . SLEEP MUSIC"},
    {"image": "assets/img/mu3.png", "title": "Moon Clouds", "subtitle": "45 MIN . SLEEP MUSIC"},
  ];

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) => Scaffold(
        backgroundColor: TColor.sleep,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                alignment: Alignment.topCenter,
                children: [
                  Image.asset(
                    "assets/img/top_sleep.png",
                    width: double.infinity,
                    fit: BoxFit.fitWidth,
                  ),
                  Column(
                    children: [
                      SizedBox(height: 60.h),
                      Text(
                        "Sleep Stories",
                        maxLines: 1,
                        style: TextStyle(
                          color: TColor.sleepText,
                          fontSize: 28.sp,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(height: 15.h),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.w),
                        child: Text(
                          "Soothing bedtime stories to help you fall\ninto a deep and natural sleep",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: TColor.secondaryText,
                            fontSize: 14.sp,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 120.h,
                        child: ListView.separated(
                          padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 20.w),
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            var cObj = catArr[index];
                            return GestureDetector(
                              onTap: () {
                                setState(() {
                                  selectIndex = index;
                                });
                              },
                              child: Column(
                                children: [
                                  Container(
                                    width: 55.w,
                                    height: 55.w,
                                    decoration: BoxDecoration(
                                      color: selectIndex == index ? TColor.primary : const Color(0xff586894),
                                      borderRadius: BorderRadius.circular(20.r),
                                    ),
                                    alignment: Alignment.center,
                                    child: Image.asset(
                                      cObj["icon"],
                                      width: 25.w,
                                      height: 25.w,
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
                          separatorBuilder: (_, __) => SizedBox(width: 20.w),
                          itemCount: catArr.length,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 15.w),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: const Color(0xffF1DDCF),
                          borderRadius: BorderRadius.circular(12.r),
                        ),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Image.asset(
                              "assets/img/sleep_box.png",
                              width: double.infinity,
                              fit: BoxFit.fitWidth,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.h),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(height: 60.h),
                                  Text(
                                    "The Ocean Moon",
                                    style: TextStyle(
                                      color: const Color(0xffFFE7BF),
                                      fontSize: 32.sp,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  SizedBox(height: 8.h),
                                  Text(
                                    "Non-stop 8-hour mixes of our\nmost popular sleep audio",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: TColor.tertiary,
                                      fontSize: 16.sp,
                                    ),
                                  ),
                                  SizedBox(height: 25.h),
                                  InkWell(
                                    onTap: () {},
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: TColor.tertiary,
                                        borderRadius: BorderRadius.circular(20.r),
                                      ),
                                      padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 15.w),
                                      child: Text(
                                        "START",
                                        style: TextStyle(
                                          color: TColor.primaryText,
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
              GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 15.w),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 15.w,
                  mainAxisSpacing: 15.h,
                  childAspectRatio: 0.75, // giảm để text không bị tràn
                ),
                itemBuilder: (context, index) {
                  var cObj = listArr[index];
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => const SleepStoriesDetailScreen()),
                      );
                    },
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10.r),
                          child: Image.asset(
                            cObj["image"],
                            width: double.infinity,
                            height: 150.h,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(height: 8.h),
                        Text(
                          cObj["title"],
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: TColor.sleepText,
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(height: 4.h),
                        Text(
                          cObj["subtitle"],
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: TColor.sleepText,
                            fontSize: 12.sp,
                          ),
                        ),
                      ],
                    ),
                  );
                },
                itemCount: listArr.length,
              ),
            ],
          ),
        ),
      ),
    );
  }
}