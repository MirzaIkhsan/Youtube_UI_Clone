import 'package:flutter/material.dart';
import 'package:youtube_ui_clone/helpers/local_navigator.dart';
import 'package:youtube_ui_clone/pages/home_page/home_page.dart';
import 'package:youtube_ui_clone/pages/layout/large_screen_layout.dart';
import 'package:youtube_ui_clone/pages/layout/small_screen_layout.dart';

import '../../constants/controller.dart';
import '../../helpers/responsiveness.dart';
import '../../widgets/side_menu.dart';
import '../../widgets/top_navbar.dart';

class HomeLayout extends StatelessWidget {
  HomeLayout({Key? key}) : super(key: key);

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      key: scaffoldKey,
      appBar: TopNavBar(
        scaffoldKey,
        onPressed: () => ResponsiveWidget.isLargeScreenSize(context) ||
                ResponsiveWidget.isMediumScreenSize(context)
            ? homeController.openDrawer = !homeController.isDrawerOpen
            : scaffoldKey.currentState!.openDrawer(),
      ),
      drawer: Container(
        width: ResponsiveWidget.isSmallScreenSize(context)
            ? size.width / 2
            : size.width / 4,
        child: Drawer(child: SideMenu()),
      ),
      body: ResponsiveWidget(
        largeScreen: LargeScreenLayout(),
        mediumScreen: LargeScreenLayout(drawerFlex: 2),
        smallScreen: SmallScreenLayout(),
      ),
      drawerEnableOpenDragGesture: false,
      endDrawerEnableOpenDragGesture: false,
    );
  }
}
