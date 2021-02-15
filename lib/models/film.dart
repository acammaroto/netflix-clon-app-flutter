import 'package:flutter/material.dart';

class Film {
  AssetImage cover;
  String currentWatchedSeason;
  String currentWatchedEpisode;
  int progress;
  int remain;
  String title;
  Film({
    this.cover,
    this.currentWatchedEpisode,
    this.currentWatchedSeason,
    this.progress = 0,
    this.remain = 100,
    this.title = "",
  });
}
