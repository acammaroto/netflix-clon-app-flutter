import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_clone/models/colors.dart';
import 'package:netflix_clone/models/textstyles.dart';
import 'package:netflix_clone/views/app_bar.widget.dart';
import 'package:netflix_clone/views/movie_ongoing.view.dart';
import 'package:url_launcher/url_launcher.dart';

class ComingSoonView extends StatelessWidget {
  _launchUrl() async {
    const url =
        "https://www.youtube.com/watch?v=yIdPMkBlRQU&t=59s&ab_channel=AngeloCammaroto";
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      // can't launch url, there is some error
      throw "Could not launch $url";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        AppBarNetflix(),
        Expanded(
          child: CustomScrollView(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            slivers: [
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                    return Container(
                      margin: EdgeInsets.only(left: 0, right: 0),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text("COMING", style: boldSubtitle),
                                Text("SOON", style: lightSubtitle)
                              ],
                            ),
                            SizedBox(height: 30),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Container(
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.white.withOpacity(0.9),
                                      spreadRadius: 5,
                                      blurRadius: 10,
                                      offset: Offset(
                                          0, 3), // changes position of shadow
                                    ),
                                  ],
                                ),
                                child: Image(
                                    image:
                                        AssetImage("assets/covervideoy.jpg")),
                              ),
                            ),
                            SizedBox(height: 30),
                            Container(
                              child: Text(
                                  "The Best Part of Being a Software Developer",
                                  style: h1StyleWhite),
                            ),
                            SizedBox(height: 10),
                            Container(
                              alignment: Alignment.bottomLeft,
                              child:
                                  Text("SEASON 1 - EPISODE 3", style: h5Style),
                            ),
                            SizedBox(height: 10),
                            Container(
                              alignment: Alignment.bottomLeft,
                              child: Text(
                                  "Hey friends welcome back into this channel. I am Angelo and I am a coder and today we're going to talk about the best part of being a Software Developer and how a good freelancer should be approach to a new client project. Every useful links are in the description. Thank you for watching!",
                                  style: paragraph),
                            ),
                            SizedBox(height: 10),
                            GestureDetector(
                              onTap: () {
                                _launchUrl();
                              },
                              child: Container(
                                  alignment: Alignment.centerLeft,
                                  height: 35,
                                  width: 170,
                                  decoration: BoxDecoration(
                                    color: Colors.black45,
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      SizedBox(width: 10),
                                      Icon(CupertinoIcons.play),
                                      SizedBox(width: 10),
                                      Text("See on ",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold)),
                                      Text("YouTube",
                                          style: TextStyle(color: red)),
                                    ],
                                  )),
                            ),
                            MoviewOngoing(),
                          ]),
                    );
                  },
                  childCount: 1,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
