import 'package:flutter/material.dart';

import '../../widgets/grid_view_videos.dart';

class SmallScreen extends StatelessWidget {
  const SmallScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(24),
      child: GridViewVideo(crossAxisCount: 2),
    );
  }
}
