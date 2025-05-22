// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'health_status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

HealthStatus _$HealthStatusFromJson(Map<String, dynamic> json) {
  return _HealthStatus.fromJson(json);
}

/// @nodoc
mixin _$HealthStatus {
  String get status => throw _privateConstructorUsedError;
  String get version => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  /// Serializes this HealthStatus to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HealthStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HealthStatusCopyWith<HealthStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HealthStatusCopyWith<$Res> {
  factory $HealthStatusCopyWith(
          HealthStatus value, $Res Function(HealthStatus) then) =
      _$HealthStatusCopyWithImpl<$Res, HealthStatus>;
  @useResult
  $Res call({String status, String version, String message});
}

/// @nodoc
class _$HealthStatusCopyWithImpl<$Res, $Val extends HealthStatus>
    implements $HealthStatusCopyWith<$Res> {
  _$HealthStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HealthStatus
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? version = null,
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HealthStatusImplCopyWith<$Res>
    implements $HealthStatusCopyWith<$Res> {
  factory _$$HealthStatusImplCopyWith(
          _$HealthStatusImpl value, $Res Function(_$HealthStatusImpl) then) =
      __$$HealthStatusImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String status, String version, String message});
}

/// @nodoc
class __$$HealthStatusImplCopyWithImpl<$Res>
    extends _$HealthStatusCopyWithImpl<$Res, _$HealthStatusImpl>
    implements _$$HealthStatusImplCopyWith<$Res> {
  __$$HealthStatusImplCopyWithImpl(
      _$HealthStatusImpl _value, $Res Function(_$HealthStatusImpl) _then)
      : super(_value, _then);

  /// Create a copy of HealthStatus
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? version = null,
    Object? message = null,
  }) {
    return _then(_$HealthStatusImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HealthStatusImpl implements _HealthStatus {
  const _$HealthStatusImpl(
      {required this.status, required this.version, this.message = ''});

  factory _$HealthStatusImpl.fromJson(Map<String, dynamic> json) =>
      _$$HealthStatusImplFromJson(json);

  @override
  final String status;
  @override
  final String version;
  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'HealthStatus(status: $status, version: $version, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HealthStatusImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, version, message);

  /// Create a copy of HealthStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HealthStatusImplCopyWith<_$HealthStatusImpl> get copyWith =>
      __$$HealthStatusImplCopyWithImpl<_$HealthStatusImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HealthStatusImplToJson(
      this,
    );
  }
}

abstract class _HealthStatus implements HealthStatus {
  const factory _HealthStatus(
      {required final String status,
      required final String version,
      final String message}) = _$HealthStatusImpl;

  factory _HealthStatus.fromJson(Map<String, dynamic> json) =
      _$HealthStatusImpl.fromJson;

  @override
  String get status;
  @override
  String get version;
  @override
  String get message;

  /// Create a copy of HealthStatus
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HealthStatusImplCopyWith<_$HealthStatusImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
