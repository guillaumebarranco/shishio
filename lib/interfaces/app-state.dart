import 'package:shishio/interfaces/manga.dart';

class AppState {
  int increment;
  List<Manga> mangas;

  AppState(this.increment, this.mangas) {}

  AppState.fromAppState(AppState another) {
    increment = another.increment;
    mangas = another.mangas;
  }
}
