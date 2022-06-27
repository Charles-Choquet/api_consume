import 'dart:convert';

import 'package:dio/dio.dart';

class FilmData {
  Future<Response> getPopularFilms() async {
    var films = await Dio()
        .get("https://api.themoviedb.org/3/movie/popular?language=fr-FR&api_key=9bc605bc17a16c041bd16a1bdb9dd03c");
    print(jsonDecode(films.toString())["results"]);
    return films ;
  }
}