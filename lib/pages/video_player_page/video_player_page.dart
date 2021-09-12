import 'package:flick_video_player/flick_video_player.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:youtube_ui_clone/constants/controller.dart';
import 'package:youtube_ui_clone/helpers/responsiveness.dart';
import 'package:youtube_ui_clone/widgets/side_menu.dart';
import 'package:youtube_ui_clone/widgets/top_navbar.dart';

class VideoPlayerPage extends StatefulWidget {
  final String videoUrl;
  VideoPlayerPage({
    Key? key,
    required this.videoUrl,
  }) : super(key: key);

  @override
  _VideoPlayerPageState createState() => _VideoPlayerPageState();
}

class _VideoPlayerPageState extends State<VideoPlayerPage> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  late VideoPlayerController videoPlayerController;
  late FlickManager flickManager;

  @override
  void initState() {
    videoPlayerController = VideoPlayerController.asset(widget.videoUrl)
      ..initialize().then(
        (value) => setState(() {
          videoPlayerController.play();
          seekTo(
            Duration(
                milliseconds: Duration(minutes: 2, seconds: 12).inMilliseconds),
          );
        }),
      );
    super.initState();
  }

  Future<void> seekTo(Duration duration) async {
    videoPlayerController.seekTo(Duration(minutes: 2, seconds: 12));
  }

  @override
  void dispose() {
    videoPlayerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
      ),
      body: Center(
        child: videoPlayerController.value.isInitialized
            ? VideoPlayer(videoPlayerController)
            : SizedBox(),
      ),
    );
  }
}
