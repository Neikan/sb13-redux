// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

// Project imports:
import 'package:mtg_redux/consts/keys.dart';
import 'package:mtg_redux/consts/translations.dart';
import 'package:mtg_redux/models/mtg_card_info/mtg_card_info.dart';
import 'package:mtg_redux/store/state_app.dart';
import 'package:mtg_redux/ui/components/app_header.dart';
import 'package:mtg_redux/ui/components/app_text.dart';
import 'package:mtg_redux/ui/screens/screen_cards/components/list_cards/list_card.dart';

class ScreenCart extends StatelessWidget {
  const ScreenCart({super.key});

  @override
  Widget build(BuildContext context) => StoreConnector<StateApp, _ViewModel>(
        converter: _ViewModel.fromStore,
        builder: (context, vm) {
          final cardsToList = <MtgCardInfo>[];

          for (final card in vm.cards) {
            if (vm.cart.contains(card.id)) {
              cardsToList.add(card);
            }
          }

          return Scaffold(
            appBar: AppHeader(
              title: labelsCart[keyTitle]!,
            ),
            body: SafeArea(
              child: vm.cart.isEmpty
                  ? Center(
                      child: AppText(
                        text: labelsCart[keyContent]!,
                        fontSize: 16,
                      ),
                    )
                  : ListCards(cards: cardsToList),
            ),
          );
        },
      );
}

class _ViewModel {
  final List<MtgCardInfo> cards;
  final List<String> cart;

  _ViewModel({
    required this.cards,
    required this.cart,
  });

  static _ViewModel fromStore(Store<StateApp> store) {
    return _ViewModel(
      cards: store.state.cards.cards,
      cart: store.state.cart,
    );
  }
}
