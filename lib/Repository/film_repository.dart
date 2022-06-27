import 'dart:convert';

import 'package:api_consume/data/film_data.dart';

class FilmRepository {
  void getPopularFilms(){
    var films = FilmData().getPopularFilms();
    (jsonDecode(films.toString()) as List<Object>).map((e){
      print(e);
    });
  }
}