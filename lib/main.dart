import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:youtube_ui_clone/controllers/home_page_controller.dart';
import 'package:youtube_ui_clone/controllers/navigation_controller.dart';
import 'package:youtube_ui_clone/pages/layout/home_layout.dart';

import './constants/pallete.dart';
import './controllers/menu_controller.dart';

void main() {
  Get.put(MenuController());
  Get.put(HomePageController());
  Get.put(NavigationController());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Youtube_UI_Clone',
      theme: ThemeData(
        scaffoldBackgroundColor: backgroundDarkColor,
        textTheme: GoogleFonts.poppinsTextTheme(
          Theme.of(context).textTheme,
        ).apply(bodyColor: Colors.white),
      ),
      home: HomeLayout(),
    );
  }
}
