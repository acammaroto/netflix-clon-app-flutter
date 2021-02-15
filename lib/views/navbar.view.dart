import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:netflix_clone/views/homepage.view.dart';
import 'package:netflix_clone/views/coming_soon.view.dart';

class NetflixNavbar extends StatefulWidget {
  const NetflixNavbar({
    Key key,
    @required int selectedIndex,
    @required Function onTap,
  })  : _selectedIndex = selectedIndex,
        _onTap = onTap,
        super(key: key);

  final int _selectedIndex;
  final Function _onTap;
  @override
  _NetflixNavbarState createState() => _NetflixNavbarState();
}

class _NetflixNavbarState extends State<NetflixNavbar> {
  final selectedBoxDecoration = BoxDecoration(
    color: Colors.black54,
    borderRadius: BorderRadius.circular(50),
  );

  BoxDecoration homeDecoration = BoxDecoration();
  BoxDecoration searchDecoration = BoxDecoration();
  BoxDecoration videoDecoration = BoxDecoration();
  BoxDecoration downloadDecoration = BoxDecoration();
  List<BoxDecoration> navBarItemDecorations = [];
  @override
  void initState() {
    homeDecoration = selectedBoxDecoration;
    navBarItemDecorations.add(homeDecoration);
    navBarItemDecorations.add(searchDecoration);
    navBarItemDecorations.add(videoDecoration);
    navBarItemDecorations.add(downloadDecoration);
    super.initState();
  }

  updateState({int iconIndex}) {
    setState(() {
      homeDecoration = BoxDecoration();
      searchDecoration = BoxDecoration();
      videoDecoration = BoxDecoration();
      downloadDecoration = BoxDecoration();
      switch (iconIndex) {
        case 0:
          homeDecoration = selectedBoxDecoration;

          break;
        case 1:
          searchDecoration = selectedBoxDecoration;
          break;
        case 2:
          videoDecoration = selectedBoxDecoration;
          break;
        case 3:
          downloadDecoration = selectedBoxDecoration;
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 15),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: 10.0,
              sigmaY: 10.0,
            ),
            child: Container(
              alignment: Alignment.center,
              width: 270,
              height: 50,
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      updateState(iconIndex: 0);
                      SystemChrome.setPreferredOrientations([
                        DeviceOrientation.portraitDown,
                        DeviceOrientation.portraitUp,
                      ]);
                      widget._onTap(0);
                    },
                    child: Container(
                      decoration: homeDecoration,
                      child: Padding(
                        padding: const EdgeInsets.all(13.5),
                        child: Container(
                          child: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("assets/home.png"),
                                  fit: BoxFit.contain),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      updateState(iconIndex: 1);
                      widget._onTap(1);
                      SystemChrome.setPreferredOrientations([
                        DeviceOrientation.portraitDown,
                        DeviceOrientation.portraitUp,
                      ]);
                    },
                    child: Container(
                      decoration: searchDecoration,
                      child: Padding(
                        padding: const EdgeInsets.all(13.5),
                        child: Container(
                          child: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("assets/search.png"),
                                  fit: BoxFit.contain),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      updateState(iconIndex: 2);
                      widget._onTap(2);
                      SystemChrome.setPreferredOrientations([
                        DeviceOrientation.landscapeLeft,
                        DeviceOrientation.landscapeRight,
                      ]);
                    },
                    child: Container(
                      decoration: videoDecoration,
                      child: Padding(
                        padding: const EdgeInsets.all(13.5),
                        child: Container(
                          child: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("assets/play.png"),
                                  fit: BoxFit.contain),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      updateState(iconIndex: 3);
                      widget._onTap;
                      SystemChrome.setPreferredOrientations([
                        DeviceOrientation.portraitDown,
                        DeviceOrientation.portraitUp,
                      ]);
                    },
                    child: Container(
                      decoration: downloadDecoration,
                      child: Padding(
                        padding: const EdgeInsets.all(13.5),
                        child: Container(
                          child: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("assets/download.png"),
                                  fit: BoxFit.contain),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              decoration: BoxDecoration(),
            ),
          ),
        ),
      ),
    );
  }
}
