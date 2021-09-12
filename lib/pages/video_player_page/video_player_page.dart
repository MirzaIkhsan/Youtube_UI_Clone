import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:youtube_ui_clone/constants/controller.dart';
import 'package:youtube_ui_clone/helpers/responsiveness.dart';
import 'package:youtube_ui_clone/widgets/side_menu.dart';
import 'package:youtube_ui_clone/widgets/top_navbar.dart';

class VideoPlayerPage extends StatefulWidget {
  VideoPlayerPage({Key? key}) : super(key: key);

  @override
  _VideoPlayerPageState createState() => _VideoPlayerPageState();
}

class _VideoPlayerPageState extends State<VideoPlayerPage> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  final videoPlayerController =
      VideoPlayerController.asset('/videos/path/wonderland_indonesia.mp4');

  late ChewieController chewieController;

  @override
  void initState() {
    chewieController = ChewieController(
      videoPlayerController: videoPlayerController,
      autoPlay: true,
      looping: true,
    );
    super.initState();
  }

  @override
  void dispose() {
    videoPlayerController.dispose();
    chewieController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Center(
          child: Chewie(
        controller: chewieController,
      )),
    );
  }
}
