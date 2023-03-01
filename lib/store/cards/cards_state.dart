// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'package:mtg_redux/models/mtg_card_info/mtg_card_info.dart';

part 'cards_state.freezed.dart';

@freezed
class CardsState with _$CardsState {
  const factory CardsState({
    required List<MtgCardInfo> cards,
    required String error,
    required bool isLoading,
  }) = _CardsState;
}
