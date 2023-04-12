// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'riverpod_controller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DropdownButtonPageState {
  String get selectValue => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DropdownButtonPageStateCopyWith<DropdownButtonPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DropdownButtonPageStateCopyWith<$Res> {
  factory $DropdownButtonPageStateCopyWith(DropdownButtonPageState value,
          $Res Function(DropdownButtonPageState) then) =
      _$DropdownButtonPageStateCopyWithImpl<$Res, DropdownButtonPageState>;
  @useResult
  $Res call({String selectValue});
}

/// @nodoc
class _$DropdownButtonPageStateCopyWithImpl<$Res,
        $Val extends DropdownButtonPageState>
    implements $DropdownButtonPageStateCopyWith<$Res> {
  _$DropdownButtonPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectValue = null,
  }) {
    return _then(_value.copyWith(
      selectValue: null == selectValue
          ? _value.selectValue
          : selectValue // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DropdownButtonPageStateCopyWith<$Res>
    implements $DropdownButtonPageStateCopyWith<$Res> {
  factory _$$_DropdownButtonPageStateCopyWith(_$_DropdownButtonPageState value,
          $Res Function(_$_DropdownButtonPageState) then) =
      __$$_DropdownButtonPageStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String selectValue});
}

/// @nodoc
class __$$_DropdownButtonPageStateCopyWithImpl<$Res>
    extends _$DropdownButtonPageStateCopyWithImpl<$Res,
        _$_DropdownButtonPageState>
    implements _$$_DropdownButtonPageStateCopyWith<$Res> {
  __$$_DropdownButtonPageStateCopyWithImpl(_$_DropdownButtonPageState _value,
      $Res Function(_$_DropdownButtonPageState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectValue = null,
  }) {
    return _then(_$_DropdownButtonPageState(
      selectValue: null == selectValue
          ? _value.selectValue
          : selectValue // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_DropdownButtonPageState implements _DropdownButtonPageState {
  const _$_DropdownButtonPageState({this.selectValue = 'abc'});

  @override
  @JsonKey()
  final String selectValue;

  @override
  String toString() {
    return 'DropdownButtonPageState(selectValue: $selectValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DropdownButtonPageState &&
            (identical(other.selectValue, selectValue) ||
                other.selectValue == selectValue));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectValue);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DropdownButtonPageStateCopyWith<_$_DropdownButtonPageState>
      get copyWith =>
          __$$_DropdownButtonPageStateCopyWithImpl<_$_DropdownButtonPageState>(
              this, _$identity);
}

abstract class _DropdownButtonPageState implements DropdownButtonPageState {
  const factory _DropdownButtonPageState({final String selectValue}) =
      _$_DropdownButtonPageState;

  @override
  String get selectValue;
  @override
  @JsonKey(ignore: true)
  _$$_DropdownButtonPageStateCopyWith<_$_DropdownButtonPageState>
      get copyWith => throw _privateConstructorUsedError;
}
