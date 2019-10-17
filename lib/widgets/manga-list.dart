import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

import 'package:shishio/interfaces/manga.dart';
import 'package:shishio/interfaces/app-state.dart';

Widget mangaList() {
  return StoreConnector<AppState, List<Manga>>(
    converter: (store) => store.state.mangas,
    builder: (context, mangas) {
      return Column(children: mangas.map((manga) =>
        Row(children: [
        Text(manga.name),
        Text(manga.score)
        ])
      ).toList());
    },
  );
}