// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'package:mtg_redux/store/cards/cards_state.dart';

part 'state_app.freezed.dart';

@freezed
class StateApp with _$StateApp {
  factory StateApp({
    @Default(
      CardsState(
        cards: [],
        error: '',
        isLoading: true,
      ),
    )
        CardsState cards,
    @Default([])
        List<String> cart,
  }) = _StateApp;

  factory StateApp.initial() => StateApp();
}
