import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:youtube_ui_clone/constants/controller.dart';
import 'package:youtube_ui_clone/widgets/side_menu.dart';
import 'package:youtube_ui_clone/widgets/video_card_item.dart';

class LargeScreen extends StatelessWidget {
  const LargeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Row(
      children: [
        Obx(() => homeController.isDrawerOpen
            ? Expanded(child: SideMenu(showIconLogo: false))
            : SizedBox()),
        Expanded(
          flex: 5,
          child: Container(
            padding: EdgeInsets.all(24),
            child: GridView.builder(
                itemCount: 5,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 5,
                ),
                itemBuilder: (context, idx) {
                  return VideoCardItem();
                }),
          ),
        ),
      ],
    );
  }
}
