import 'package:flutter/material.dart';
import 'package:netflix_clone/views/main_gallery.view.dart';
import 'package:netflix_clone/views/movie_ongoing.view.dart';
import 'package:netflix_clone/views/my_list.viw.dart';
import 'package:netflix_clone/views/netflix_originals.view.dart';
import 'package:netflix_clone/views/app_bar.widget.dart';

class MoviePage extends StatelessWidget {
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
                    return MainMovieGallery();
                  },
                  childCount: 1,
                ),
              ),
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                    return MoviewOngoing();
                  },
                  childCount: 1,
                ),
              ),
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                    return MyList();
                  },
                  childCount: 1,
                ),
              ),
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                    return NetflixOriginals();
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
