import 'package:api_consume/view/screen/film_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Films extends StatelessWidget {
  const Films({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    FilmViewModel filmViewModel = context.read<FilmViewModel>();
    var films = filmViewModel.getPopular();
    return Center(
      child: Text('Page des films'),
    );
  }
}
