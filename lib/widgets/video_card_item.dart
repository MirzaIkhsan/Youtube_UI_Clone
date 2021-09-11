import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:youtube_ui_clone/constants/controller.dart';

class VideoCardItem extends StatelessWidget {
  // final String imageUrl;
  const VideoCardItem({
    Key? key,
    // required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        AspectRatio(
          aspectRatio: 272 / 153,
          child: Container(
            color: Colors.white,
            // decoration: BoxDecoration(
            //     image: DecorationImage(
            //   image: NetworkImage(this.imageUrl),
            //   fit: BoxFit.cover,
            // )),
          ),
        ),
        SizedBox(height: 14),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 36,
              height: 36,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.redAccent,
              ),
            ),
            SizedBox(width: 14),
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Energy18 - Bright As The Sun - Official Song Asian Games 2018',
                    style: TextStyle(fontWeight: FontWeight.w500),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    '18th Asian Games 2018',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Colors.white54,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.clip,
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
