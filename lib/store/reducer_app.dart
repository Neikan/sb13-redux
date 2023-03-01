// Project imports:
import 'package:mtg_redux/store/cards/cards_reducer.dart';
import 'package:mtg_redux/store/cart/cart_reducer.dart';
import 'package:mtg_redux/store/state_app.dart';

StateApp reducerApp(StateApp state, dynamic action) => StateApp(
      cards: reducerCards(state.cards, action),
      cart: reducerCart(state.cart, action),
    );
