import 'package:flutter/material.dart';

import '../../pages/layout/large_screen_layout.dart';
import '../../pages/layout/small_screen_layout.dart';
import '../../widgets/grid_view_videos.dart';
import '../../helpers/responsiveness.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: LargeScreenLayout(child: GridViewVideo(crossAxisCount: 4)),
      mediumScreen: LargeScreenLayout(
          drawerFlex: 2, child: GridViewVideo(crossAxisCount: 2)),
      smallScreen: SmallScreenLayout(child: GridViewVideo(crossAxisCount: 2)),
    );
  }
}
