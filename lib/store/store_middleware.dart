// Package imports:
import 'package:dio/dio.dart';
import 'package:redux/redux.dart';

// Project imports:
import 'package:mtg_redux/repository/repository_cards/repository_cards.dart';
import 'package:mtg_redux/repository/repository_cards/repository_cards_imp.dart';
import 'package:mtg_redux/repository/repository_cart/repository_cart.dart';
import 'package:mtg_redux/repository/repository_cart/repository_cart_imp.dart';
import 'package:mtg_redux/store/cards/cards_actions.dart';
import 'package:mtg_redux/store/cart/cart_actions.dart';
import 'package:mtg_redux/store/state_app.dart';

List<Middleware<StateApp>> createStoreMiddleware([
  RepositoryCards repositoryCards = const RepositoryCardsImp(),
  RepositoryCart repositoryCart = const RepositoryCartImp(),
]) {
  final initCards = _initCards(repositoryCards);

  final addCardToCart = _addCardToCart(repositoryCart);
  final removeCardFromCart = _removeCardFromCart(repositoryCart);

  return [
    TypedMiddleware<StateApp, CardsActionInit>(initCards),
    TypedMiddleware<StateApp, CartActionAdd>(addCardToCart),
    TypedMiddleware<StateApp, CartActionRemove>(removeCardFromCart),
  ];
}

Middleware<StateApp> _initCards(RepositoryCards repository) {
  return (Store<StateApp> store, action, NextDispatcher next) async {
    next(action);

    try {
      final cards = await repository.load();

      store.dispatch(CardsActionLoaded(payload: cards));
    } on DioError catch (e) {
      store.dispatch(CardsActionError(
        payload: e.error.toString(),
      ));
    }
  };
}

Middleware<StateApp> _addCardToCart(RepositoryCart repository) {
  return (Store<StateApp> store, action, NextDispatcher next) {
    next(action);

    if (action is CartActionAdd) {
      repository.add(action.payload);
    }
  };
}

Middleware<StateApp> _removeCardFromCart(RepositoryCart repository) {
  return (Store<StateApp> store, action, NextDispatcher next) {
    next(action);

    if (action is CartActionRemove) {
      repository.remove(action.payload);
    }
  };
}
