import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:shishio/actions/manga.actions.dart';
import 'package:shishio/interfaces/app-state.dart';

Widget inputScore(store) {
  return StoreConnector<AppState, void Function(String)>(
    converter: (store) {
      return (minimumScore) =>
          store.dispatch(UpdateMinimumScore(int.parse(minimumScore)));
    },
    builder: (context, callback) {
      return new TextField(
        decoration: new InputDecoration(labelText: "Minimum Score"),
        keyboardType: TextInputType.number,
        onChanged: (value) {
          store.dispatch(UpdateMinimumScore(int.parse(value)));
        },
      );
    },
  );
}
