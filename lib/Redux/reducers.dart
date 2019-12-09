import '../Modal/appState.dart';
import './actions.dart';

AppState reducer(AppState prevState, dynamic action) {
  AppState newState = AppState.fromAppState(prevState);
  if (action is FontSize) {
    newState.fontSize = action.payload;
  }
  return newState;
}
