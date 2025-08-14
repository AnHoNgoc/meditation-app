import 'package:flutter/material.dart';
import '../../common/color_extension.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class MusicScreen extends StatefulWidget {
  const MusicScreen({super.key});

  @override
  State<MusicScreen> createState() => _MusicScreenState();
}

class _MusicScreenState extends State<MusicScreen> {
  List listArr = [
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
    return Scaffold(
      backgroundColor: TColor.sleep,
      appBar: AppBar(
        leading: Container(),
        centerTitle: true,
        title: Text(
          "Music",
          style: TextStyle(
            color: TColor.sleepText,
            fontSize: 17.sp,
            fontWeight: FontWeight.w700,
          ),
        ),
        backgroundColor: TColor.sleep,
        elevation: 0,
      ),
      body: GridView.builder(
        padding: EdgeInsets.symmetric(vertical: 15.h, horizontal: 15.w),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 15.w,
          mainAxisSpacing: 15.h,
          childAspectRatio: 0.86, // giảm tỷ lệ để cao hơn 1 chút
        ),
        itemCount: listArr.length,
        itemBuilder: (context, index) {
          var cObj = listArr[index];
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10.r),
                child: Image.asset(
                  cObj["image"],
                  width: double.infinity,
                  height: 0.18.sh, // khoảng 18% chiều cao màn hình
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
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 4.h),
              Text(
                cObj["subtitle"],
                maxLines: 1,
                style: TextStyle(
                  color: TColor.secondaryText,
                  fontSize: 12.sp,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}