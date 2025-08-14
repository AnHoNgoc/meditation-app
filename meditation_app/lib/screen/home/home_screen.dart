import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meditation_app/common/color_extension.dart';

import 'course_detail_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List rArr = [
    {
      "image": "assets/img/r1.png",
      "title": "Focus",
      "subtitle": "MEDITATION . 3-10 MIN",
    },
    {
      "image": "assets/img/r2.png",
      "title": "Happiness",
      "subtitle": "MEDITATION . 3-10 MIN",
    },
    {
      "image": "assets/img/r1.png",
      "title": "Focus",
      "subtitle": "MEDITATION . 3-10 MIN",
    },
    {
      "image": "assets/img/r2.png",
      "title": "Happiness",
      "subtitle": "MEDITATION . 3-10 MIN",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/img/logo_black.png",
                    width: 200.w, // thay cho context.width * 0.5
                  )
                ],
              ),
              SizedBox(height: 35.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Good Morning, Afsar",
                      style: TextStyle(
                        color: TColor.primaryText,
                        fontSize: 26.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(height: 8.h),
                    Text(
                      "We Wish you have a good day",
                      style: TextStyle(
                        color: TColor.secondaryText,
                        fontSize: 20.sp,
                      ),
                    ),
                    SizedBox(height: 25.h),

                    /// --- 2 nút lớn ---
                    Row(
                      children: [
                        Expanded(
                          child: _buildBigCard(
                            color: const Color(0xff8E97FD),
                            image: "assets/img/h1.png",
                            title: "Basics",
                            subtitle: "COURSE",
                            time: "3-10 MIN",
                            textColor: TColor.tertiary,
                            btnColor: TColor.tertiary,
                            btnTextColor: TColor.primaryText,
                            onTap: () {
                              context.push(const CourseDetailScreen());
                            },
                          ),
                        ),
                        SizedBox(width: 20.w),
                        Expanded(
                          child: _buildBigCard(
                            color: const Color(0xffFFC97E),
                            image: "assets/img/h2.png",
                            title: "Relaxation",
                            subtitle: "MUSIC",
                            time: "3-10 MIN",
                            textColor: TColor.primaryText,
                            btnColor: TColor.primaryText,
                            btnTextColor: TColor.tertiary,
                            onTap: () {
                              context.push(const CourseDetailScreen());
                            },
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 20.h),

                    /// --- Daily Thought ---
                    Container(
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                        color: const Color(0xff333242),
                        borderRadius: BorderRadius.circular(12.r),
                      ),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Image.asset(
                            "assets/img/d1.png",
                            width: double.maxFinite,
                            fit: BoxFit.fitWidth,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 15.w,
                              vertical: 15.h,
                            ),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Daily Thought",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18.sp,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                      SizedBox(height: 8.h),
                                      Text(
                                        "MEDITATION . 3-10 MIN",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 11.sp,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                InkWell(
                                  onTap: () {},
                                  child: Image.asset(
                                    "assets/img/play.png",
                                    width: 40.w,
                                    height: 40.w,
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),

                    SizedBox(height: 35.h),

                    Text(
                      "Recommended for you",
                      style: TextStyle(
                        color: TColor.primaryText,
                        fontSize: 24.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 15.h),
                  ],
                ),
              ),

              /// --- ListView ngang ---
              SizedBox(
                height: 161.5.h, // đúng chiều cao Figma
                child: ListView.separated(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20.w, // bỏ vertical để không cộng thêm chiều cao
                  ),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    var rObj = rArr[index];
                    return SizedBox(
                      width: 162.w, // đúng chiều rộng Figma
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            rObj["image"],
                            width: 162.w,
                            height: 113.h, // chiều cao ảnh đúng tỉ lệ
                            fit: BoxFit.cover,
                          ),
                          SizedBox(height: 8.h),
                          Text(
                            rObj["title"],
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: TColor.primaryText,
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(height: 4.h),
                          Text(
                            rObj["subtitle"],
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: TColor.primaryText,
                              fontSize: 11.sp,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                  separatorBuilder: (context, index) => SizedBox(width: 20.w),
                  itemCount: rArr.length,
                ),
              )

            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBigCard({
    required Color color,
    required String image,
    required String title,
    required String subtitle,
    required String time,
    required Color textColor,
    required Color btnColor,
    required Color btnTextColor,
    required VoidCallback onTap, // thêm callback
  }) {
    return InkWell(
      borderRadius: BorderRadius.circular(15.r),
      onTap: onTap, // gán luôn vào đây
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15.r),
        child: Container(
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(15.r),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Image.asset(
                    image,
                    width: 80.w,
                    height: 80.w,
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        color: textColor,
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(height: 8.h),
                    Text(
                      subtitle,
                      style: TextStyle(
                        color: textColor,
                        fontSize: 11.sp,
                      ),
                    ),
                    SizedBox(height: 25.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          time,
                          style: TextStyle(
                            color: textColor,
                            fontSize: 11.sp,
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            // Nếu muốn nút START có hành động riêng
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: btnColor,
                              borderRadius: BorderRadius.circular(20.r),
                            ),
                            padding: EdgeInsets.symmetric(
                              vertical: 8.h,
                              horizontal: 15.w,
                            ),
                            child: Text(
                              "START",
                              style: TextStyle(
                                color: btnTextColor,
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 15.h),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}