import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constants/controller.dart';
import '../../helpers/responsiveness.dart';
import '../../widgets/grid_view_videos.dart';
import '../../widgets/side_menu.dart';

class LargeScreen extends StatelessWidget {
  const LargeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Obx(() => homeController.isDrawerOpen
            ? ResponsiveWidget.isMediumScreenSize(context)
                ? SizedBox()
                : Expanded(child: SideMenu(showIconLogo: false))
            : SizedBox()),
        Expanded(
          flex: 5,
          child: Container(
            padding: EdgeInsets.all(24),
            child: GridViewVideo(crossAxisCount: 4),
          ),
        ),
      ],
    );
  }
}
