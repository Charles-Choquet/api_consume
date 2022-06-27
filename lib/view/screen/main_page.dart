import 'package:api_consume/view/screen/acteurs.dart';
import 'package:api_consume/view/screen/favoris.dart';
import 'package:api_consume/view/screen/films.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  int _index = 0;

  final List<Widget> _widgets = [
    const Films(),
    const Acteurs(),
    const Favoris(),
  ];

  void _changePage(int index) {
    setState((){
      _index = index;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  const Text('TMDB application'),
      ),
      body: _widgets[_index],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _changePage,
        currentIndex: _index,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.movie_creation_outlined),
              label:'Films populaire'),
          BottomNavigationBarItem(
              icon: Icon(Icons.people_outline),
              label: 'Acteurs'),
          BottomNavigationBarItem(
              icon: Icon(Icons.star),
              label: 'Film favoris')
        ],
      ),
    );
  }
}
