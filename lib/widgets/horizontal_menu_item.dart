import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/controller.dart';

class HorizontalMenuItem extends StatelessWidget {
  final String itemName;
  final void Function()? onTap;
  const HorizontalMenuItem({
    Key? key,
    required this.itemName,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return InkWell(
        onTap: this.onTap,
        onHover: (isHover) {
          isHover
              ? menuController.onHover(this.itemName)
              : menuController.onHover("not hovering");
        },
        child: Obx(
          () => Container(
            color: menuController.isHovering(this.itemName)
                ? Colors.blue.withOpacity(0.1)
                : Colors.transparent,
            child: Row(
              children: [
                Visibility(
                  visible: menuController.isActive(this.itemName),
                  maintainSize: true,
                  maintainState: true,
                  maintainAnimation: true,
                  child: Container(
                    width: 6,
                    height: 40,
                    color: Colors.white60,
                  ),
                ),
                SizedBox(width: size.width / 80),
                Padding(
                  padding: EdgeInsets.all(16),
                  child: menuController.returnIconFor(this.itemName),
                ),
                Text(
                  itemName,
                  style: GoogleFonts.roboto(
                    fontSize: 15,
                    color: Colors.white,
                  ),
                )
                // Flexible(child: ) // 1:26:58 - 1:27:31
              ],
            ),
          ),
        ));
  }
}
