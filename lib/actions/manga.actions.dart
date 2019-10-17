import 'package:http/http.dart' as http;
import 'package:redux/redux.dart';
import 'package:redux_thunk/redux_thunk.dart';
import 'dart:convert';
import 'package:shishio/interfaces/manga.dart';
import 'package:shishio/interfaces/app-state.dart';

class MangasLoaded {
  List<Manga> mangas;
  MangasLoaded(this.mangas) {}
}

class LoadMangas {
  ThunkAction<AppState> getMangas = (Store<AppState> store) async {

    var url = 'http://webarranco.fr:1208/mangas/all/shonen/10';
    var response = await http.get(url);

    List<Manga> mangas = new List<Manga>();
    List<dynamic> values = new List<dynamic>();

    values = json.decode(response.body.toString());

    for(int i=0;i<values.length;i++){
      Map<String,dynamic> manga = values[i];
      mangas.add(Manga.fromJson(manga));
    }

    store.dispatch(
      MangasLoaded(mangas)
    );
  };
}