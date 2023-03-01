// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cards_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CardsState {
  List<MtgCardInfo> get cards => throw _privateConstructorUsedError;
  String get error => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CardsStateCopyWith<CardsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CardsStateCopyWith<$Res> {
  factory $CardsStateCopyWith(
          CardsState value, $Res Function(CardsState) then) =
      _$CardsStateCopyWithImpl<$Res, CardsState>;
  @useResult
  $Res call({List<MtgCardInfo> cards, String error, bool isLoading});
}

/// @nodoc
class _$CardsStateCopyWithImpl<$Res, $Val extends CardsState>
    implements $CardsStateCopyWith<$Res> {
  _$CardsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cards = null,
    Object? error = null,
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      cards: null == cards
          ? _value.cards
          : cards // ignore: cast_nullable_to_non_nullable
              as List<MtgCardInfo>,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CardsStateCopyWith<$Res>
    implements $CardsStateCopyWith<$Res> {
  factory _$$_CardsStateCopyWith(
          _$_CardsState value, $Res Function(_$_CardsState) then) =
      __$$_CardsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<MtgCardInfo> cards, String error, bool isLoading});
}

/// @nodoc
class __$$_CardsStateCopyWithImpl<$Res>
    extends _$CardsStateCopyWithImpl<$Res, _$_CardsState>
    implements _$$_CardsStateCopyWith<$Res> {
  __$$_CardsStateCopyWithImpl(
      _$_CardsState _value, $Res Function(_$_CardsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cards = null,
    Object? error = null,
    Object? isLoading = null,
  }) {
    return _then(_$_CardsState(
      cards: null == cards
          ? _value._cards
          : cards // ignore: cast_nullable_to_non_nullable
              as List<MtgCardInfo>,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_CardsState implements _CardsState {
  const _$_CardsState(
      {required final List<MtgCardInfo> cards,
      required this.error,
      required this.isLoading})
      : _cards = cards;

  final List<MtgCardInfo> _cards;
  @override
  List<MtgCardInfo> get cards {
    if (_cards is EqualUnmodifiableListView) return _cards;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cards);
  }

  @override
  final String error;
  @override
  final bool isLoading;

  @override
  String toString() {
    return 'CardsState(cards: $cards, error: $error, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CardsState &&
            const DeepCollectionEquality().equals(other._cards, _cards) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_cards), error, isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CardsStateCopyWith<_$_CardsState> get copyWith =>
      __$$_CardsStateCopyWithImpl<_$_CardsState>(this, _$identity);
}

abstract class _CardsState implements CardsState {
  const factory _CardsState(
      {required final List<MtgCardInfo> cards,
      required final String error,
      required final bool isLoading}) = _$_CardsState;

  @override
  List<MtgCardInfo> get cards;
  @override
  String get error;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$_CardsStateCopyWith<_$_CardsState> get copyWith =>
      throw _privateConstructorUsedError;
}
