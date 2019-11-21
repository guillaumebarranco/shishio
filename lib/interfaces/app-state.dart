import 'package:shishio/interfaces/manga.dart';

class AppState {
  int minimumScore;
  List<Manga> mangas;

  AppState(this.minimumScore, this.mangas) {}

  AppState.fromAppState(AppState another) {
    minimumScore = another.minimumScore;
    mangas = another.mangas;
  }
}
