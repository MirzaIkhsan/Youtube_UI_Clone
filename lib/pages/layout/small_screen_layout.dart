import 'package:flutter/material.dart';
import 'package:youtube_ui_clone/helpers/local_navigator.dart';

class SmallScreenLayout extends StatelessWidget {
  const SmallScreenLayout({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(24),
      child: localNavigator(),
    );
  }
}
