// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_redux/flutter_redux.dart';

// Project imports:
import 'package:mtg_redux/consts/keys.dart';
import 'package:mtg_redux/consts/routes.dart';
import 'package:mtg_redux/models/mtg_card_info/mtg_card_info.dart';
import 'package:mtg_redux/store/cards/cards_actions.dart';
import 'package:mtg_redux/store/state_app.dart';
import 'package:mtg_redux/ui/screens/screen_card/screen_card.dart';
import 'package:mtg_redux/ui/screens/screen_cards/screen_cards.dart';
import 'package:mtg_redux/ui/screens/screen_cart/screen_cart.dart';
import 'package:mtg_redux/ui/screens/screen_not_found.dart';

Route<dynamic> generateRoute(RouteSettings settings) => MaterialPageRoute(
      settings: settings,
      builder: (BuildContext context) {
        switch (settings.name) {
          case routeCards:
            return ScreenCards(
              onInit: () {
                StoreProvider.of<StateApp>(context).dispatch(CardsActionInit());
              },
            );

          case routeCard:
            final arguments = settings.arguments as Map<String, MtgCardInfo>;
            final card = arguments[keyCard]!;

            return ScreenCard(
              cardId: card.id,
              title: card.name,
            );

          case routeCart:
            return const ScreenCart();

          default:
            return const ScreenNotFound();
        }
      },
    );
