import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:youtube_ui_clone/helpers/local_navigator.dart';
import 'package:youtube_ui_clone/helpers/responsiveness.dart';

import '../../constants/controller.dart';
import '../../widgets/side_menu.dart';

class LargeScreenLayout extends StatelessWidget {
  final int drawerFlex;
  // final Widget child;
  const LargeScreenLayout({
    Key? key,
    this.drawerFlex = 1,
    // required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Obx(() => homeController.isDrawerOpen
            ? Expanded(
                flex: drawerFlex,
                child: SideMenu(showIconLogo: false),
              )
            : SizedBox()),
        Expanded(
          flex: 5,
          child: Container(
            padding: EdgeInsets.all(24),
            child: localNavigator(),
          ),
        ),
      ],
    );
  }
}
