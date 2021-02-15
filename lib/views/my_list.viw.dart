import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_clone/models/colors.dart';
import 'package:netflix_clone/models/film.dart';
import 'package:netflix_clone/models/textstyles.dart';
import 'package:netflix_clone/services/movies.services.dart';

class MyList extends StatelessWidget {
  final MovieService service = new MovieService();

  List<Widget> buildOnGoingFilmsBlock() {
    List<Widget> result = [];
    for (Film item in service.getMyMovieList()) {
      GestureDetector widget = buildFilmHighligh(item: item);
      SizedBox space = SizedBox(width: 16);
      result.add(widget);
      result.add(space);
    }
    return result;
  }

  GestureDetector buildFilmHighligh({Film item}) {
    return GestureDetector(
      onTap: () {},
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Stack(
          children: [
            Container(
              width: 150,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: item.cover,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 15, right: 15, top: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                "MY ",
                style: lightSubtitle,
              ),
              Text(
                "LIST ",
                style: boldSubtitle,
              ),
              Icon(CupertinoIcons.chevron_forward),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          SizedBox(
            height: 200,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: buildOnGoingFilmsBlock(),
            ),
          ),
        ],
      ),
    );
  }
}
