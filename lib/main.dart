import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:redux_thunk/redux_thunk.dart';

import 'package:shishio/interfaces/app-state.dart';
import 'package:shishio/reducers/root-reducer.dart';
import 'package:shishio/widgets/load-button.dart';
import 'package:shishio/widgets/manga-list.dart';

void main() async {
  final store = Store<AppState>(rootReducer, initialState: AppState(0, []), middleware: [thunkMiddleware]);

  runApp(FlutterReduxApp(
    title: 'Shishio',
    store: store,
  ));
}

class FlutterReduxApp extends StatelessWidget {
  final Store<AppState> store;
  final String title;

  FlutterReduxApp({Key key, this.store, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
      store: store,
      child: MaterialApp(
        theme: ThemeData.dark(),
        title: title,
        home: Scaffold(
          appBar: AppBar(
            title: Text(title),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                mangaList()
              ],
            ),
          ),
          floatingActionButton: loadButton(),
        ),
      ),
    );
  }
}
