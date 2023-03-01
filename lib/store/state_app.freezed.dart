// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'state_app.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$StateApp {
  CardsState get cards => throw _privateConstructorUsedError;
  List<String> get cart => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StateAppCopyWith<StateApp> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StateAppCopyWith<$Res> {
  factory $StateAppCopyWith(StateApp value, $Res Function(StateApp) then) =
      _$StateAppCopyWithImpl<$Res, StateApp>;
  @useResult
  $Res call({CardsState cards, List<String> cart});

  $CardsStateCopyWith<$Res> get cards;
}

/// @nodoc
class _$StateAppCopyWithImpl<$Res, $Val extends StateApp>
    implements $StateAppCopyWith<$Res> {
  _$StateAppCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cards = null,
    Object? cart = null,
  }) {
    return _then(_value.copyWith(
      cards: null == cards
          ? _value.cards
          : cards // ignore: cast_nullable_to_non_nullable
              as CardsState,
      cart: null == cart
          ? _value.cart
          : cart // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CardsStateCopyWith<$Res> get cards {
    return $CardsStateCopyWith<$Res>(_value.cards, (value) {
      return _then(_value.copyWith(cards: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_StateAppCopyWith<$Res> implements $StateAppCopyWith<$Res> {
  factory _$$_StateAppCopyWith(
          _$_StateApp value, $Res Function(_$_StateApp) then) =
      __$$_StateAppCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CardsState cards, List<String> cart});

  @override
  $CardsStateCopyWith<$Res> get cards;
}

/// @nodoc
class __$$_StateAppCopyWithImpl<$Res>
    extends _$StateAppCopyWithImpl<$Res, _$_StateApp>
    implements _$$_StateAppCopyWith<$Res> {
  __$$_StateAppCopyWithImpl(
      _$_StateApp _value, $Res Function(_$_StateApp) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cards = null,
    Object? cart = null,
  }) {
    return _then(_$_StateApp(
      cards: null == cards
          ? _value.cards
          : cards // ignore: cast_nullable_to_non_nullable
              as CardsState,
      cart: null == cart
          ? _value._cart
          : cart // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$_StateApp implements _StateApp {
  _$_StateApp(
      {this.cards = const CardsState(cards: [], error: '', isLoading: true),
      final List<String> cart = const []})
      : _cart = cart;

  @override
  @JsonKey()
  final CardsState cards;
  final List<String> _cart;
  @override
  @JsonKey()
  List<String> get cart {
    if (_cart is EqualUnmodifiableListView) return _cart;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cart);
  }

  @override
  String toString() {
    return 'StateApp(cards: $cards, cart: $cart)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StateApp &&
            (identical(other.cards, cards) || other.cards == cards) &&
            const DeepCollectionEquality().equals(other._cart, _cart));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, cards, const DeepCollectionEquality().hash(_cart));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StateAppCopyWith<_$_StateApp> get copyWith =>
      __$$_StateAppCopyWithImpl<_$_StateApp>(this, _$identity);
}

abstract class _StateApp implements StateApp {
  factory _StateApp({final CardsState cards, final List<String> cart}) =
      _$_StateApp;

  @override
  CardsState get cards;
  @override
  List<String> get cart;
  @override
  @JsonKey(ignore: true)
  _$$_StateAppCopyWith<_$_StateApp> get copyWith =>
      throw _privateConstructorUsedError;
}
