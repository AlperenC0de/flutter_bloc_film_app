import 'package:flutter_application_9/data/entity/films.dart';

class FilmsDaoRepository{

  Future<List<Film>> uploadFilm() async {
      var filmsList = <Film>[];
      var f1 = Film(id: 1, name: "Django", picture: "django.png", price: 24);
      var f2 = Film(id: 2, name: "Interstellar", picture: "interstellar.png", price: 32);
      var f3 = Film(id: 3, name: "Inception", picture: "inception.png", price: 16);
      var f4 = Film(id: 4, name: "The Hateful Eight", picture: "thehatefuleight.png", price: 28);
      var f5 = Film(id: 5, name: "The Pianist", picture: "thepianist.png", price: 18);
      var f6 = Film(id: 6, name: "Anadoluda", picture: "anadoluda.png", price: 10);
      filmsList.add(f1);
      filmsList.add(f2);
      filmsList.add(f3);
      filmsList.add(f4);
      filmsList.add(f5);
      filmsList.add(f6);
      return filmsList;
 }

}