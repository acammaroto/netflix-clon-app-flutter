import 'package:flutter/material.dart';
import 'package:netflix_clone/models/film.dart';

class MovieService {
  List<Film> getGalleryMovie() {
    return [
      Film(
        cover: AssetImage("assets/film-1.jpg"),
      ),
      Film(
        cover: AssetImage("assets/film-2.webp"),
      ),
      Film(
        cover: AssetImage("assets/film-3.jpg"),
      ),
      Film(
        cover: AssetImage("assets/film-1.jpg"),
      )
    ];
  }

  List<Film> getOnGoingMovies() {
    return [
      Film(
        cover: AssetImage("assets/marvel.jpg"),
        progress: 25,
        title: "Captain Marvel",
      ),
      Film(
        cover: AssetImage("assets/gladiatore.jpg"),
        progress: 55,
        title: "The Gladiator",
      ),
      Film(
        cover: AssetImage("assets/jocker.jpg"),
        progress: 80,
        title: "Joker",
      ),
      Film(
        cover: AssetImage("assets/scream.jpg"),
        progress: 75,
        title: "Scream",
      ),
      Film(
        cover: AssetImage("assets/after.jpg"),
        progress: 15,
        title: "After",
      )
    ];
  }

  List<Film> getMyMovieList() {
    return [
      Film(
        cover: AssetImage("assets/thewitcher.jpg"),
        progress: 25,
        title: "Captain Marvel",
      ),
      Film(
        cover: AssetImage("assets/hp.jpg"),
        progress: 55,
        title: "The Gladiator",
      ),
      Film(
        cover: AssetImage("assets/lohobbit.webp"),
        progress: 80,
        title: "Joker",
      ),
      Film(
        cover: AssetImage("assets/desolation.jpg"),
        progress: 75,
        title: "Scream",
      ),
      Film(
        cover: AssetImage("assets/pirates.jpg"),
        progress: 15,
        title: "After",
      )
    ];
  }

  List<Film> getNetflixOriginals() {
    return [
      Film(
        cover: AssetImage("assets/thewitcher.jpg"),
        progress: 25,
        title: "Captain Marvel",
      ),
      Film(
        cover: AssetImage("assets/luciver.jpg"),
        progress: 55,
        title: "The Gladiator",
      ),
      Film(
        cover: AssetImage("assets/dark.jpg"),
        progress: 80,
        title: "Joker",
      ),
      Film(
        cover: AssetImage("assets/disenchant.jpg"),
        progress: 75,
        title: "Scream",
      ),
    ];
  }
}
