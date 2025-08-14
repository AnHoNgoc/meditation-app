import 'package:flutter/material.dart';
import '../../common/color_extension.dart';
import '../../common_widget/round_button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SleepStoriesDetailScreen extends StatefulWidget {
  const SleepStoriesDetailScreen({super.key});

  @override
  State<SleepStoriesDetailScreen> createState() =>
      _SleepStoriesDetailScreenState();
}

class _SleepStoriesDetailScreenState extends State<SleepStoriesDetailScreen> {
  List listArr = [
    {"image": "assets/img/mu3.png", "title": "Moon Clouds", "subtitle": "45 MIN . SLEEP MUSIC"},
    {"image": "assets/img/mu2.png", "title": "Sweet Sleep", "subtitle": "45 MIN . SLEEP MUSIC"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: TColor.sleep,
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              pinned: true,
              backgroundColor: TColor.sleep,
              leading: Padding(
                padding: EdgeInsets.only(left: 15.w),
                child: InkWell(
                  onTap: () {
                    context.pop();
                  },
                  child: Image.asset(
                    "assets/img/back_white.png",
                    width: 55.w,
                    height: 55.h,
                  ),
                ),
              ),
              actions: [
                InkWell(
                  onTap: () {},
                  child: Image.asset(
                    "assets/img/fav_button.png",
                    width: 45.w,
                    height: 45.h,
                  ),
                ),
                SizedBox(width: 12.w),
                Padding(
                  padding: EdgeInsets.only(right: 15.w),
                  child: InkWell(
                    onTap: () {},
                    child: Image.asset(
                      "assets/img/download_button.png",
                      width: 45.w,
                      height: 45.h,
                    ),
                  ),
                ),
              ],
              flexibleSpace: FlexibleSpaceBar(
                  background: ClipRRect(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(15.r),
                        bottomRight: Radius.circular(15.r)),
                    child: Image.asset(
                      "assets/img/sleep_detail_top.png",
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  )),
              expandedHeight: 0.6.sw,
            )
          ];
        },
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 15.h),
                    Text(
                      "Night Island",
                      style: TextStyle(
                          color: TColor.sleepText,
                          fontSize: 34.sp,
                          fontWeight: FontWeight.w700),
                    ),
                    SizedBox(height: 8.h),
                    Text(
                      "45 MIN . SLEEP MUSIC",
                      style: TextStyle(
                          color: TColor.secondaryText,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(height: 25.h),
                    Text(
                      "Ease the mind into a restful night’s sleep with these deep, ambient tones.",
                      style: TextStyle(
                        color: TColor.secondaryText,
                        fontSize: 16.sp,
                      ),
                    ),
                    SizedBox(height: 25.h),
                    Row(
                      children: [
                        Image.asset(
                          "assets/img/fav.png",
                          width: 20.w,
                          height: 20.h,
                          color: TColor.sleepText,
                        ),
                        SizedBox(width: 15.w),
                        Expanded(
                          child: Text(
                            "24.234 Favorites",
                            style: TextStyle(
                                color: TColor.sleepText,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        Image.asset(
                          "assets/img/headphone.png",
                          width: 20.w,
                          height: 20.h,
                          color: TColor.sleepText,
                        ),
                        SizedBox(width: 15.w),
                        Expanded(
                          child: Text(
                            "34.234 Listening",
                            style: TextStyle(
                                color: TColor.sleepText,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 25.h),
                    Divider(
                      height: 2.h,
                      color: TColor.sleepText.withOpacity(0.3),
                    ),
                    SizedBox(height: 25.h),
                    Text(
                      "Related",
                      style: TextStyle(
                          color: TColor.sleepText,
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
              ),
              GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 15.w),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 15.h,
                  crossAxisSpacing: 15.w,
                  childAspectRatio: 0.85, // tăng chiều cao để tránh tràn text
                ),
                itemCount: listArr.length,
                itemBuilder: (context, index) {
                  var cObj = listArr[index];
                  return GestureDetector(
                    onTap: () {},
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10.r),
                          child: Image.asset(
                            cObj["image"],
                            width: double.infinity,
                            height: 0.18.sh, // chiều cao ảnh tùy màn hình
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(height: 8.h),
                        Text(
                          cObj["title"],
                          maxLines: 1,
                          style: TextStyle(
                              color: TColor.sleepText,
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w700),
                        ),
                        SizedBox(height: 4.h),
                        Text(
                          cObj["subtitle"],
                          maxLines: 1,
                          style: TextStyle(
                            color: TColor.sleepText,
                            fontSize: 12.sp,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
              SizedBox(height: 15.h),
              RoundButton(title: "Play", onPressed: () {}),
              SizedBox(height: 30.h),
            ],
          ),
        ),
      ),
    );
  }
}