import 'package:flutter_application_9/data/entity/films.dart';
import 'package:flutter_application_9/data/repo/films_dao_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainpageCubit extends Cubit<List<Film>>{

  MainpageCubit():super(<Film>[]);

  var frepo=FilmsDaoRepository();

  Future<void> uploadFilm() async {
      
      var films=await frepo.uploadFilm();
      emit(films);
 }

}