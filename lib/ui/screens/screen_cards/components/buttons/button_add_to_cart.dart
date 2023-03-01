// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

// Project imports:
import 'package:mtg_redux/store/cart/cart_actions.dart';
import 'package:mtg_redux/store/state_app.dart';

class ButtonAddToCart extends StatelessWidget {
  final String cardId;

  const ButtonAddToCart({
    super.key,
    required this.cardId,
  });

  @override
  Widget build(BuildContext context) => StoreConnector<StateApp, _ViewModel>(
        converter: _ViewModel.fromStore,
        builder: (_, vm) {
          if (vm.cart.contains(cardId)) {
            return IconButton(
              icon: Icon(
                Icons.remove_shopping_cart_outlined,
                color: Colors.red.shade800,
              ),
              onPressed: () => vm.remove(cardId),
            );
          }

          return IconButton(
            icon: Icon(
              Icons.add_shopping_cart_outlined,
              color: Colors.green.shade800,
            ),
            onPressed: () => vm.add(cardId),
          );
        },
      );
}

class _ViewModel {
  final List<String> cart;
  final void Function(String) add, remove;

  _ViewModel({
    required this.cart,
    required this.add,
    required this.remove,
  });

  static _ViewModel fromStore(Store<StateApp> store) {
    return _ViewModel(
      cart: store.state.cart,
      add: (String cardId) => store.dispatch(
        CartActionAdd(payload: cardId),
      ),
      remove: (String cardId) => store.dispatch(
        CartActionRemove(payload: cardId),
      ),
    );
  }
}
