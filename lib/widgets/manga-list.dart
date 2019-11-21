import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

import 'package:shishio/interfaces/manga.dart';
import 'package:shishio/interfaces/app-state.dart';

Widget mangaList() {
  return StoreConnector<AppState, List<Manga>>(
    converter: (store) => store.state.mangas
        .where((f) => double.parse(f.score) >= store.state.minimumScore)
        .toList(),
    builder: (context, mangas) {
      return new ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: mangas.length,
        itemBuilder: (BuildContext ctxt, int index) {
          return Container(
            padding: EdgeInsets.all(16.0),
            child: Row(children: [
              Text(mangas[index].name),
              Text(' : '),
              Text(mangas[index].score),
              Text('/10')
            ]),
          );
        },
      );
    },
  );
}
