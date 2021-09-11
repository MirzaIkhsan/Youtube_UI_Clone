import 'package:flutter/material.dart';
import 'package:youtube_ui_clone/constants/controller.dart';
import 'package:youtube_ui_clone/widgets/side_menu.dart';

import '../../helpers/responsiveness.dart';
import '../../widgets/top_navbar.dart';
import './small_screen.dart';
import './large_screen.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: TopNavBar(scaffoldKey,
          onPressed: () =>
              homeController.openDrawer = !homeController.isDrawerOpen),
      // drawer: Container(
      //   width: size.width / 6,
      //   child: Drawer(child: SideMenu()),
      // ),
      body: ResponsiveWidget(
        largeScreen: LargeScreen(),
        smallScreen: SmallScreen(),
      ),
      drawerEnableOpenDragGesture: false,
      endDrawerEnableOpenDragGesture: false,
    );
  }
}
