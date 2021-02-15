import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:netflix_clone/models/film.dart';
import 'package:netflix_clone/services/movies.services.dart';

class MainMovieGallery extends StatelessWidget {
  final MovieService service = new MovieService();

  List<Widget> buildGalleryBlock() {
    List<Widget> result = [];
    //SizedBox divider = SizedBox(width: 0);
    for (Film item in service.getGalleryMovie()) {
      GestureDetector widget = buildStoryHighligh(item: item);
      result.add(widget);
    }
    return result;
  }

  GestureDetector buildStoryHighligh({Film item}) {
    return GestureDetector(
      onTap: () {},
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: item.cover,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SizedBox(
        height: 200,
        child: CarouselSlider(
          items: buildGalleryBlock(),
          options: CarouselOptions(
            height: 200,
            viewportFraction: 0.8,
            initialPage: 0,
            enableInfiniteScroll: true,
            reverse: false,
            autoPlay: false,
            enlargeCenterPage: true,
            scrollDirection: Axis.horizontal,
          ),
        ),
      ),
    );
  }
}
