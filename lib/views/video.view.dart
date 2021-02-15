import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class BumbleBeeRemoteVideo extends StatefulWidget {
  @override
  BumbleBeeRemoteVideoState createState() => BumbleBeeRemoteVideoState();
}

class BumbleBeeRemoteVideoState extends State<BumbleBeeRemoteVideo> {
//   VideoPlayerController _controller;

//   @override
//   void initState() {
//     super.initState();
//     _controller = VideoPlayerController.network(
//       'https://www.youtube.com/watch?v=yIdPMkBlRQU&t=61s&ab_channel=AngeloCammaroto',
//       closedCaptionFile: null,
//       videoPlayerOptions: VideoPlayerOptions(mixWithOthers: true),
//     );

//     _controller.addListener(() {
//       setState(() {});
//     });
//     _controller.setLooping(true);
//     _controller.initialize();
//   }

//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       alignment: Alignment.bottomCenter,
//       children: <Widget>[
//         VideoPlayer(_controller),
//         ClosedCaption(text: _controller.value.caption.text),
//         _ControlsOverlay(controller: _controller),
//         VideoProgressIndicator(_controller, allowScrubbing: true),
//       ],
//     );
//   }
// }

// class _ControlsOverlay extends StatelessWidget {
//   const _ControlsOverlay({Key key, this.controller}) : super(key: key);

//   static const _examplePlaybackRates = [
//     0.25,
//     0.5,
//     1.0,
//     1.5,
//     2.0,
//     3.0,
//     5.0,
//     10.0,
//   ];

//   final VideoPlayerController controller;

//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       children: <Widget>[
//         AnimatedSwitcher(
//           duration: Duration(milliseconds: 50),
//           reverseDuration: Duration(milliseconds: 200),
//           child: controller.value.isPlaying
//               ? SizedBox.shrink()
//               : Container(
//                   color: Colors.black26,
//                   child: Center(
//                     child: Icon(
//                       Icons.play_arrow,
//                       color: Colors.white,
//                       size: 100.0,
//                     ),
//                   ),
//                 ),
//         ),
//         GestureDetector(
//           onTap: () {
//             controller.value.isPlaying ? controller.pause() : controller.play();
//           },
//         ),
//         Align(
//           alignment: Alignment.topRight,
//           child: PopupMenuButton<double>(
//             initialValue: controller.value.playbackSpeed,
//             tooltip: 'Playback speed',
//             onSelected: (speed) {
//               controller.setPlaybackSpeed(speed);
//             },
//             itemBuilder: (context) {
//               return [
//                 for (final speed in _examplePlaybackRates)
//                   PopupMenuItem(
//                     value: speed,
//                     child: Text('${speed}x'),
//                   )
//               ];
//             },
//             child: Padding(
//               padding: const EdgeInsets.symmetric(
//                 // Using less vertical padding as the text is also longer
//                 // horizontally, so it feels like it would need more spacing
//                 // horizontally (matching the aspect ratio of the video).
//                 vertical: 12,
//                 horizontal: 16,
//               ),
//               child: Text('${controller.value.playbackSpeed}x'),
//             ),
//           ),
//         ),
//       ],
//     );
//   }

  YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: 'yIdPMkBlRQU',
    flags: YoutubePlayerFlags(
      autoPlay: true,
      mute: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return YoutubePlayerBuilder(
        player: YoutubePlayer(
          controller: _controller,
          showVideoProgressIndicator: true,
          progressIndicatorColor: Colors.amber,
          progressColors: ProgressBarColors(
            playedColor: Colors.amber,
            handleColor: Colors.amberAccent,
          ),
        ),
        builder: (context, player) {
          return Column(children: [player]);
        });
  }
}
