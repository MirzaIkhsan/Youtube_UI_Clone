import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:youtube_ui_clone/models/video.dart';
import 'package:youtube_ui_clone/pages/video_player_page/video_player_page.dart';

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
        itemCount: videos.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: this.crossAxisCount,
          crossAxisSpacing: 16,
          mainAxisSpacing: 25,
        ),
        itemBuilder: (context, idx) {
          return InkWell(
            onTap: () => Get.to(
              VideoPlayerPage(videoUrl: videos[idx].videoUrl),
            ),
            splashColor: Colors.transparent,
            child: VideoCardItem(
              title: videos[idx].title,
              thumbnail: videos[idx].thumbnail,
            ),
          );
        });
  }
}
