// Package imports:
import 'package:redux/redux.dart';

// Project imports:
import 'package:mtg_redux/store/cards/cards_actions.dart';
import 'package:mtg_redux/store/cards/cards_state.dart';

final reducerCards = combineReducers<CardsState>([
  TypedReducer<CardsState, CardsActionLoaded>(_loaded),
  TypedReducer<CardsState, CardsActionError>(_catchError),
]);

CardsState _loaded(
  CardsState state,
  CardsActionLoaded action,
) {
  return state.copyWith(
    cards: action.payload,
    isLoading: false,
  );
}

CardsState _catchError(
  CardsState state,
  CardsActionError action,
) {
  return state.copyWith(
    error: action.payload,
    isLoading: false,
  );
}
