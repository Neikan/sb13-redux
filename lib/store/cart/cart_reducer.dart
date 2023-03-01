// Package imports:
import 'package:redux/redux.dart';

// Project imports:
import 'package:mtg_redux/store/cart/cart_actions.dart';

final reducerCart = combineReducers<List<String>>([
  TypedReducer<List<String>, CartActionAdd>(_addCard),
  TypedReducer<List<String>, CartActionRemove>(_removeCard),
]);

List<String> _addCard(
  List<String> cards,
  CartActionAdd action,
) {
  return [...cards, action.payload];
}

List<String> _removeCard(
  List<String> cards,
  CartActionRemove action,
) {
  return cards.where((id) => id != action.payload).toList();
}
