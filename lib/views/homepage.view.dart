import 'package:flutter/material.dart';
import 'package:netflix_clone/models/colors.dart';
import 'package:netflix_clone/views/movie_page.view.dart';
import 'package:netflix_clone/views/navbar.view.dart';
import 'package:netflix_clone/views/coming_soon.view.dart';
import 'package:netflix_clone/views/video.view.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomePage createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  int _selectedIndex = 0;

  final List<Widget> _childrenView = [];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  void initState() {
    super.initState();
    buildListView();
  }

  void buildListView() {
    MoviePage movies = MoviePage();
    ComingSoonView merchantPage = ComingSoonView();
    BumbleBeeRemoteVideo video = BumbleBeeRemoteVideo();
    _childrenView.add(movies);
    _childrenView.add(merchantPage);
    _childrenView.add(video);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: black,
      body: Stack(
        children: [
          IndexedStack(
            index: _selectedIndex,
            children: _childrenView,
          ),
          NetflixNavbar(
            selectedIndex: _selectedIndex,
            onTap: _onItemTapped,
          ),
        ],
      ),
    );
  }
}
