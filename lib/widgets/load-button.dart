import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

import 'package:shishio/actions/manga.actions.dart';
import 'package:shishio/interfaces/app-state.dart';

Widget loadButton() {
  return StoreConnector<AppState, VoidCallback>(
    converter: (store) {
      return () => store.dispatch(LoadMangas().getMangas);
    },
    builder: (context, callback) {
      return FloatingActionButton(
        onPressed: callback,
        tooltip: 'Load Mangas',
        child: Icon(Icons.add),
      );
    },
  );
}
