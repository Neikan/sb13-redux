abstract class CartAction {}

class CartActionAdd extends CartAction {
  final String payload;

  CartActionAdd({required this.payload});
}

class CartActionRemove extends CartAction {
  final String payload;

  CartActionRemove({required this.payload});
}
