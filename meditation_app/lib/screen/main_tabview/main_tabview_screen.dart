import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meditation_app/screen/meditate/meditate_screen.dart';
import 'package:meditation_app/screen/music/music_screen.dart';
import 'package:meditation_app/screen/sleep/sleep_screen.dart';

import '../../common/color_extension.dart';
import '../../common_widget/tab_button.dart';
import '../home/home_screen.dart';

class MainTabViewScreen extends StatefulWidget {
  const MainTabViewScreen({super.key});

  @override
  State<MainTabViewScreen> createState() => _MainTabViewScreenState();
}

class _MainTabViewScreenState extends State<MainTabViewScreen>
    with SingleTickerProviderStateMixin {
  TabController? controller;
  int selectTab = 0;

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 5, vsync: this);
    controller?.addListener(() {
      selectTab = controller?.index ?? 0;
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        controller: controller,
        children: [
          const HomeScreen(),
          const SleepScreen(),
          const MeditateScreen(),
          const MusicScreen(),
          Container(color: Colors.red),
        ],
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.only(top: 15.h, bottom: 8.h), // responsive padding
        decoration: BoxDecoration(
          color: selectTab == 3 || selectTab == 1
              ? TColor.sleep
              : Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 4.r, // responsive blur
              offset: Offset(0, -4.h), // responsive offset
            )
          ],
        ),
        child: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TabButton(
                icon: "assets/img/home_tab.png",
                title: "Home",
                isSelect: selectTab == 0,
                onPressed: () {
                  changeTab(0);
                },
              ),
              TabButton(
                icon: "assets/img/sleep_tab.png",
                title: "Sleep",
                isSelect: selectTab == 1,
                onPressed: () {
                  changeTab(1);
                },
              ),
              TabButton(
                icon: "assets/img/meditate_tab.png",
                title: "Meditate",
                isSelect: selectTab == 2,
                onPressed: () {
                  changeTab(2);
                },
              ),
              TabButton(
                icon: "assets/img/music_tab.png",
                title: "Music",
                isSelect: selectTab == 3,
                onPressed: () {
                  changeTab(3);
                },
              ),
              TabButton(
                icon: "assets/img/profile_tab.png",
                title: "Afsar",
                isSelect: selectTab == 4,
                onPressed: () {
                  changeTab(4);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  void changeTab(int index) {
    selectTab = index;
    controller?.animateTo(index);
    setState(() {});
  }
}