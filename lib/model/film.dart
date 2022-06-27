class Film {
  late int id;
  late String original_title;
  late String title;
  late String original_language;
  late String overview;
  late bool adult;
  late String backdrop_path;
  late double popularity;
  late String poster_path;
  late String release_date;
  late double vote_average;
  late double vote_count;
  late bool video;
  late List<int> genre_id;

  Film({
    required this.id,
    required this.original_title,
    required this.title,
    required this.original_language,
    required this.overview,
    required this.adult,
    required this.backdrop_path,
    required this.popularity,
    required this.poster_path,
    required this.release_date,
    required this.vote_average,
    required this.vote_count,
    required this.video,
    required this.genre_id
});

}