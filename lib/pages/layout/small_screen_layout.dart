import 'package:flutter/material.dart';

class SmallScreenLayout extends StatelessWidget {
  final Widget child;
  const SmallScreenLayout({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(24),
      child: this.child,
    );
  }
}
