import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meditation_app/screen/login/startup_screen.dart';

import 'common/color_extension.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(411, 866), // Kích thước gốc theo file thiết kế
      minTextAdapt: true, // Tự điều chỉnh text size
      splitScreenMode: true, // Hỗ trợ split screen
      builder: (context, child) {
        return MaterialApp(
          title: 'Meditation',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            fontFamily: "HelveticaNeue",
            scaffoldBackgroundColor: Colors.white,
            appBarTheme: const AppBarTheme(
              elevation: 0,
              backgroundColor: Colors.transparent,
            ),
            colorScheme: ColorScheme.fromSeed(seedColor: TColor.primary),
            useMaterial3: false,
          ),
          home: const StartUpScreen(),
        );
      },
    );
  }
}
