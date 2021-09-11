import 'package:flutter/material.dart';

import '../helpers/responsiveness.dart';
import '../constants/pallete.dart';
import './search_bar.dart';

class TopNavBar extends StatefulWidget implements PreferredSizeWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;
  final void Function()? onPressed;
  const TopNavBar(
    this.scaffoldKey, {
    Key? key,
    this.onPressed,
  }) : super(key: key);

  @override
  _TopNavBarState createState() => _TopNavBarState();

  @override
  Size get preferredSize => Size.fromHeight(50);
}

class _TopNavBarState extends State<TopNavBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: appBarDarkColor,
      leadingWidth: 160,
      leading: Row(
        children: [
          Container(
            margin: const EdgeInsets.only(left: 24),
            child: IconButton(
              icon: Icon(Icons.format_list_bulleted_outlined),
              // onPressed: () => widget.scaffoldKey.currentState!.openDrawer(),
              onPressed: widget.onPressed,
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
      title: Row(
        children: [
          Spacer(),
          ResponsiveWidget.isMediumScreenSize(context) ||
                  ResponsiveWidget.isLargeScreenSize(context)
              ? SearchBar()
              : Row(
                  children: [
                    Icon(Icons.search_outlined, color: Colors.white),
                    SizedBox(width: 24),
                  ],
                ),
          ResponsiveWidget.isMediumScreenSize(context) ||
                  ResponsiveWidget.isLargeScreenSize(context)
              ? Spacer()
              : SizedBox(),
          Icon(Icons.video_call, color: Colors.white, size: 28),
          SizedBox(width: 24),
          Icon(Icons.grid_on_outlined, color: Colors.white),
          SizedBox(width: 24),
          Icon(Icons.notifications_outlined, color: Colors.white),
          SizedBox(width: 24),
          Container(
            padding: EdgeInsets.all(4),
            width: 32,
            height: 32,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.redAccent,
            ),
            child: Icon(
              Icons.person_outline,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
