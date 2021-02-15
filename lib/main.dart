import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:netflix_clone/models/colors.dart';
import 'package:netflix_clone/views/app_bar.widget.dart';
import 'package:netflix_clone/views/homepage.view.dart';
import 'package:netflix_clone/views/main_gallery.view.dart';
import 'package:netflix_clone/views/movie_ongoing.view.dart';
import 'package:netflix_clone/views/my_list.viw.dart';
import 'package:netflix_clone/views/navbar.view.dart';
import 'package:netflix_clone/views/netflix_originals.view.dart';
import 'package:netflix_clone/views/coming_soon.view.dart';

void main() {
  runApp(InstagramClone());
}

class InstagramClone extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NETFLIX',
      theme: ThemeData.dark().copyWith(canvasColor: Colors.transparent),
      routes: {
        '/': (conext) => HomePage(),
      },
      initialRoute: '/',
    );
  }
}
