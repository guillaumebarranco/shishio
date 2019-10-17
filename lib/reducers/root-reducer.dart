import 'package:shishio/interfaces/app-state.dart';
import 'package:shishio/actions/manga.actions.dart';

AppState rootReducer(AppState prevState, dynamic action) {
  AppState newState = AppState.fromAppState(prevState);

  if(action is MangasLoaded) {
    newState.mangas = action.mangas;
  }

  return newState;
}
