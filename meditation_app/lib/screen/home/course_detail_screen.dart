import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meditation_app/common/color_extension.dart';

import '../../common_widget/select_tab_button.dart';

class CourseDetailScreen extends StatefulWidget {
  const CourseDetailScreen({super.key});

  @override
  State<CourseDetailScreen> createState() => _CourseDetailScreenState();
}

class _CourseDetailScreenState extends State<CourseDetailScreen> {
  int selectTab = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              pinned: true,
              backgroundColor: Colors.white,
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
              expandedHeight: 0.6.sw,
              actions: [
                InkWell(
                  onTap: () {},
                  child: Image.asset(
                    "assets/img/fav_button.png",
                    width: 45.w,
                    height: 45.h,
                  ),
                ),
                SizedBox(width: 15.w),
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
                    bottomRight: Radius.circular(15.r),
                  ),
                  child: Image.asset(
                    "assets/img/detail_top.png",
                    width: 1.sw,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
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
                    Text(
                      "Happy Morning",
                      style: TextStyle(
                        color: TColor.primaryText,
                        fontSize: 34.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(height: 8.h),
                    Text(
                      "COURSE",
                      style: TextStyle(
                        color: TColor.secondaryText,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 15.h),
                    Text(
                      "Ease the mind into a restful night’s sleep with these deep, ambient tones.",
                      style: TextStyle(
                        color: TColor.secondaryText,
                        fontSize: 16.sp,
                      ),
                    ),
                    SizedBox(height: 15.h),
                    Row(
                      children: [
                        Image.asset(
                          "assets/img/fav.png",
                          width: 20.w,
                          height: 20.h,
                        ),
                        SizedBox(width: 10.w),
                        Expanded(
                          child: Text(
                            "24.234 Favorits",
                            style: TextStyle(
                              color: TColor.secondaryText,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        Image.asset(
                          "assets/img/headphone.png",
                          width: 20.w,
                          height: 20.h,
                        ),
                        SizedBox(width: 10.w),
                        Expanded(
                          child: Text(
                            "34.234 Listening",
                            style: TextStyle(
                              color: TColor.secondaryText,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 25.h),
                    Text(
                      "Pick a Narrator",
                      style: TextStyle(
                        color: TColor.primaryText,
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  SelectTabButton(
                    title: "MALE VOICE",
                    isSelect: selectTab == 0,
                    onPressed: () {
                      setState(() {
                        selectTab = 0;
                      });
                    },
                  ),
                  SelectTabButton(
                    title: "FEMALE VOICE",
                    isSelect: selectTab == 1,
                    onPressed: () {
                      setState(() {
                        selectTab = 1;
                      });
                    },
                  ),
                ],
              ),
              Divider(height: 2.h),
              ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 15.h),
                itemBuilder: (context, index) {
                  return Container(
                    padding: EdgeInsets.symmetric(vertical: 15.h),
                    child: Row(
                      children: [
                        Image.asset(
                          index == 0
                              ? "assets/img/play_color.png"
                              : "assets/img/play_border.png",
                          width: 40.w,
                          height: 40.h,
                        ),
                        SizedBox(width: 15.w),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Focus Attention",
                                style: TextStyle(
                                  color: TColor.primaryText,
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(height: 4.h),
                              Text(
                                "10 MIN",
                                style: TextStyle(
                                  color: TColor.secondaryText,
                                  fontSize: 11.sp,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
                separatorBuilder: (context, index) => Divider(height: 1.h),
                itemCount: 5,
              ),
            ],
          ),
        ),
      ),
    );
  }
}