import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

import 'package:shishio/actions/manga.actions.dart';
import 'package:shishio/interfaces/app-state.dart';

Widget loadButton() {
  return StoreConnector<AppState, VoidCallback>(
    converter: (store) {
      // Return a `VoidCallback`, which is a fancy name for a function
      // with no parameters. It only dispatches an Increment action.
      return () => store.dispatch(LoadMangas().getMangas);
    },
    builder: (context, callback) {
      return FloatingActionButton(
        // Attach the `callback` to the `onPressed` attribute
        onPressed: callback,
        tooltip: 'Load Mangas',
        child: Icon(Icons.add),
      );
    },
  );
}
