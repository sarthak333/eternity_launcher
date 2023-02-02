// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'persisted_state_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PersistedState _$PersistedStateFromJson(Map<String, dynamic> json) {
  return _PersistedState.fromJson(json);
}

/// @nodoc
mixin _$PersistedState {
  int get appCount => throw _privateConstructorUsedError;
  @AppInfoSerialiser()
  List<AppInfo> get installedApps => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PersistedStateCopyWith<PersistedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PersistedStateCopyWith<$Res> {
  factory $PersistedStateCopyWith(
          PersistedState value, $Res Function(PersistedState) then) =
      _$PersistedStateCopyWithImpl<$Res, PersistedState>;
  @useResult
  $Res call({int appCount, @AppInfoSerialiser() List<AppInfo> installedApps});
}

/// @nodoc
class _$PersistedStateCopyWithImpl<$Res, $Val extends PersistedState>
    implements $PersistedStateCopyWith<$Res> {
  _$PersistedStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appCount = null,
    Object? installedApps = null,
  }) {
    return _then(_value.copyWith(
      appCount: null == appCount
          ? _value.appCount
          : appCount // ignore: cast_nullable_to_non_nullable
              as int,
      installedApps: null == installedApps
          ? _value.installedApps
          : installedApps // ignore: cast_nullable_to_non_nullable
              as List<AppInfo>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PersistedStateCopyWith<$Res>
    implements $PersistedStateCopyWith<$Res> {
  factory _$$_PersistedStateCopyWith(
          _$_PersistedState value, $Res Function(_$_PersistedState) then) =
      __$$_PersistedStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int appCount, @AppInfoSerialiser() List<AppInfo> installedApps});
}

/// @nodoc
class __$$_PersistedStateCopyWithImpl<$Res>
    extends _$PersistedStateCopyWithImpl<$Res, _$_PersistedState>
    implements _$$_PersistedStateCopyWith<$Res> {
  __$$_PersistedStateCopyWithImpl(
      _$_PersistedState _value, $Res Function(_$_PersistedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appCount = null,
    Object? installedApps = null,
  }) {
    return _then(_$_PersistedState(
      appCount: null == appCount
          ? _value.appCount
          : appCount // ignore: cast_nullable_to_non_nullable
              as int,
      installedApps: null == installedApps
          ? _value._installedApps
          : installedApps // ignore: cast_nullable_to_non_nullable
              as List<AppInfo>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PersistedState implements _PersistedState {
  _$_PersistedState(
      {this.appCount = 0,
      @AppInfoSerialiser() final List<AppInfo> installedApps = const []})
      : _installedApps = installedApps;

  factory _$_PersistedState.fromJson(Map<String, dynamic> json) =>
      _$$_PersistedStateFromJson(json);

  @override
  @JsonKey()
  final int appCount;
  final List<AppInfo> _installedApps;
  @override
  @JsonKey()
  @AppInfoSerialiser()
  List<AppInfo> get installedApps {
    if (_installedApps is EqualUnmodifiableListView) return _installedApps;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_installedApps);
  }

  @override
  String toString() {
    return 'PersistedState(appCount: $appCount, installedApps: $installedApps)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PersistedState &&
            (identical(other.appCount, appCount) ||
                other.appCount == appCount) &&
            const DeepCollectionEquality()
                .equals(other._installedApps, _installedApps));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, appCount,
      const DeepCollectionEquality().hash(_installedApps));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PersistedStateCopyWith<_$_PersistedState> get copyWith =>
      __$$_PersistedStateCopyWithImpl<_$_PersistedState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PersistedStateToJson(
      this,
    );
  }
}

abstract class _PersistedState implements PersistedState {
  factory _PersistedState(
          {final int appCount,
          @AppInfoSerialiser() final List<AppInfo> installedApps}) =
      _$_PersistedState;

  factory _PersistedState.fromJson(Map<String, dynamic> json) =
      _$_PersistedState.fromJson;

  @override
  int get appCount;
  @override
  @AppInfoSerialiser()
  List<AppInfo> get installedApps;
  @override
  @JsonKey(ignore: true)
  _$$_PersistedStateCopyWith<_$_PersistedState> get copyWith =>
      throw _privateConstructorUsedError;
}
