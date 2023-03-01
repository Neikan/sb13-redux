// Project imports:
import 'package:mtg_redux/models/mtg_card_info/mtg_card_info.dart';

abstract class CardsAction {}

class CardsActionInit extends CardsAction {}

class CardsActionLoaded extends CardsAction {
  final List<MtgCardInfo> payload;

  CardsActionLoaded({required this.payload});
}

class CardsActionError extends CardsAction {
  final String payload;

  CardsActionError({required this.payload});
}
