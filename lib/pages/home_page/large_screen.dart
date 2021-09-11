import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:youtube_ui_clone/constants/controller.dart';
import 'package:youtube_ui_clone/widgets/side_menu.dart';

class LargeScreen extends StatelessWidget {
  const LargeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Obx(() => homeController.isDrawerOpen.value
            ? Expanded(child: SideMenu(showIconLogo: false))
            : SizedBox()),
        Expanded(
          flex: 5,
          child: Container(
            color: Colors.greenAccent,
          ),
        ),
      ],
    );
  }
}
