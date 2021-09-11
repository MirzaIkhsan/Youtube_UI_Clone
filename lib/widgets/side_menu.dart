import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:youtube_ui_clone/helpers/responsiveness.dart';
import 'package:youtube_ui_clone/routers/routes.dart';
import 'package:youtube_ui_clone/widgets/horizontal_menu_item.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: ListView(
        children: [
          SizedBox(height: 5),
          Row(
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
          ),
          ResponsiveWidget.isLargeScreenSize(context)
              ? Column(
                  children: sideMenuItem
                      .map((itemName) => HorizontalMenuItem(
                            itemName: itemName,
                            onTap: () => print(itemName),
                          ))
                      .toList(),
                )
              : SizedBox(),
        ],
      ),
    );
  }
}