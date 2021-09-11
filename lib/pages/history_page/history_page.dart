import 'package:flutter/material.dart';

import '../../helpers/responsiveness.dart';
import '../../pages/layout/large_screen_layout.dart';
import '../../pages/layout/small_screen_layout.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: LargeScreenLayout(child: Container(color: Colors.red)),
      mediumScreen:
          LargeScreenLayout(drawerFlex: 2, child: Container(color: Colors.red)),
      smallScreen: SmallScreenLayout(child: Container(color: Colors.green)),
    );
  }
}
