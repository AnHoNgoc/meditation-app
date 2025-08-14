import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meditation_app/screen/home/reminders_screen.dart';

import '../../common/color_extension.dart';

class ChooseTopicScreen extends StatefulWidget {
  const ChooseTopicScreen({super.key});

  @override
  State<ChooseTopicScreen> createState() => _ChooseTopicScreenState();
}

class _ChooseTopicScreenState extends State<ChooseTopicScreen> {
  List dataArr = [
    {
      "image": "assets/img/c1.png",
      "title": "Reduce Stress",
      "color": "8E97FD",
      "text_color": "FFECCC",
    },
    {
      "image": "assets/img/c2.png",
      "title": "Improve Performance",
      "color": "FA6E5A",
      "text_color": "FFECCC",
    },
    {
      "image": "assets/img/c3.png",
      "title": "Reduce Anxiety",
      "color": "FEB18F",
      "text_color": "3F414E",
    },
    {
      "image": "assets/img/c4.png",
      "title": "Increase Happiness",
      "color": "FFCF86",
      "text_color": "3F414E",
    },
    {
      "image": "assets/img/c5.png",
      "title": "Personal Growth",
      "color": "6CB28E",
      "text_color": "FFECCC",
    },
    {
      "image": "assets/img/c6.png",
      "title": "Better Sleep",
      "color": "3F414E",
      "text_color": "FFECCC",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SafeArea(
            bottom: false,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          "What Brings you",
                          style: TextStyle(
                            color: TColor.primaryText,
                            fontSize: 28.sp,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "to Silent Moon?",
                    style: TextStyle(
                      color: TColor.primaryText,
                      fontSize: 28.sp,
                    ),
                  ),
                  SizedBox(height: 15.h),
                  Text(
                    "choose a topic to focus on:",
                    style: TextStyle(
                      color: TColor.secondaryText,
                      fontSize: 20.sp,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: MasonryGridView.count(
              padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 12.w),
              crossAxisCount: 2,
              mainAxisSpacing: 12.h,
              crossAxisSpacing: 12.w,
              itemCount: dataArr.length,
              itemBuilder: (context, index) {
                var height = index % 4 == 0 || index % 4 == 2
                    ? 0.55.sw // 55% màn hình width
                    : 0.45.sw; // 45% màn hình width
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
                      color: HexColor.formHex(cObj["color"]),
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
                            Padding(
                              padding: EdgeInsets.all(15.w),
                              child: Text(
                                cObj["title"],
                                maxLines: 2,
                                style: TextStyle(
                                  color: HexColor.formHex(cObj["text_color"]),
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}