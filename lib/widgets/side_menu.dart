import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:youtube_ui_clone/constants/controller.dart';

import '../helpers/responsiveness.dart';
import '../routers/routes.dart';
import '../widgets/horizontal_menu_item.dart';

class SideMenu extends StatelessWidget {
  final bool showIconLogo;
  const SideMenu({
    Key? key,
    this.showIconLogo = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      color: Colors.black,
      child: ListView(
        children: [
          SizedBox(height: 6),
          showIconLogo
              ? Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 24),
                      child: IconButton(
                        icon: Icon(
                          Icons.format_list_bulleted_outlined,
                          color: Colors.white,
                        ),
                        onPressed: () => Get.back(),
                        splashRadius: 20,
                        splashColor: Colors.white12,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 16),
                      width: 80,
                      height: 25,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('icons/mirzax.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                )
              : SizedBox(),
          ResponsiveWidget.isLargeScreenSize(context) ||
                  ResponsiveWidget.isMediumScreenSize(context) ||
                  ResponsiveWidget.isCustomScreenSize(context)
              ? Container(
                  margin: showIconLogo
                      ? EdgeInsets.only(top: 14)
                      : EdgeInsets.only(top: 0),
                  child: Column(
                    children: sideMenuItem
                        .map((itemName) => HorizontalMenuItem(
                              itemName: itemName,
                              onTap: () {
                                if (!menuController.isActive(itemName)) {
                                  menuController.changeActiveItemTo = itemName;
                                  navigationController.navigateTo(itemName);
                                }
                              },
                            ))
                        .toList(),
                  ),
                )
              : SizedBox(),
        ],
      ),
    );
  }
}
