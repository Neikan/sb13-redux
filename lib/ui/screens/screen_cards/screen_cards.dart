// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

// Project imports:
import 'package:mtg_redux/store/cards/cards_state.dart';
import 'package:mtg_redux/store/state_app.dart';
import 'package:mtg_redux/ui/components/app_error_data.dart';
import 'package:mtg_redux/ui/screens/screen_cards/components/header_cards/header_cards.dart';
import 'package:mtg_redux/ui/screens/screen_cards/components/loader_cards.dart';
import 'package:mtg_redux/ui/screens/screen_cards/components/view_cards.dart';

class ScreenCards extends StatefulWidget {
  final VoidCallback onInit;

  const ScreenCards({
    super.key,
    required this.onInit,
  });

  @override
  State<ScreenCards> createState() => _ScreenCardsState();
}

class _ScreenCardsState extends State<ScreenCards> {
  @override
  void initState() {
    widget.onInit();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return StoreConnector<StateApp, _ViewModel>(
      converter: _ViewModel.fromStore,
      builder: (context, vm) {
        if (vm.cards.isLoading) return const LoaderCards();

        if (vm.cards.error.isNotEmpty) {
          return Scaffold(
            appBar: const HeaderCards(),
            body: AppErrorData(text: vm.cards.error),
          );
        }

        return ViewCards(cards: vm.cards.cards);
      },
    );
  }
}

class _ViewModel {
  final CardsState cards;

  _ViewModel({
    required this.cards,
  });

  static _ViewModel fromStore(Store<StateApp> store) {
    return _ViewModel(
      cards: store.state.cards,
    );
  }
}
