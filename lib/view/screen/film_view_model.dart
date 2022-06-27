import 'package:api_consume/data/film_data.dart';
import 'package:flutter/material.dart';

class FilmViewModel with ChangeNotifier {
  void getPopular(){
   var films = FilmData().getPopularFilms();
  }
}