import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_clone/models/colors.dart';

class AppBarNetflix extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 15, right: 15),
        height: 100,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                // do something
              },
              child: Container(
                child: Icon(
                  CupertinoIcons.line_horizontal_3,
                  color: white,
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              height: 60,
              child: Image.asset("assets/Netflix-Logo.png"),
            ),
            GestureDetector(
              onTap: () {
                //do something
              },
              child: Container(child: Icon(CupertinoIcons.profile_circled)),
            ),
          ],
        ));
  }
}
