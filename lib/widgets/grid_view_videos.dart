import 'package:flutter/material.dart';

import './video_card_item.dart';

class GridViewVideo extends StatelessWidget {
  final int crossAxisCount;
  const GridViewVideo({
    Key? key,
    required this.crossAxisCount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: 5,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: this.crossAxisCount,
          crossAxisSpacing: 16,
          mainAxisSpacing: 25,
        ),
        itemBuilder: (context, idx) {
          return VideoCardItem();
        });
  }
}
