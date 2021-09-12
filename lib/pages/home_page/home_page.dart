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
    if (ResponsiveWidget.isLargeScreenSize(context)) {
      return GridViewVideo(crossAxisCount: 4);
    } else if (ResponsiveWidget.isMediumScreenSize(context)) {
      return GridViewVideo(crossAxisCount: 2);
    }
    return GridViewVideo(crossAxisCount: 2);
  }
}
