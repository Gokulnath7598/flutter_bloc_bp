// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_error.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ApiError> _$apiErrorSerializer = new _$ApiErrorSerializer();

class _$ApiErrorSerializer implements StructuredSerializer<ApiError> {
  @override
  final Iterable<Type> types = const [ApiError, _$ApiError];
  @override
  final String wireName = 'ApiError';

  @override
  Iterable<Object?> serialize(Serializers serializers, ApiError object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.status;
    if (value != null) {
      result
        ..add('status')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.error;
    if (value != null) {
      result
        ..add('error')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  ApiError deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ApiErrorBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'error':
          result.error = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$ApiError extends ApiError {
  @override
  final int? status;
  @override
  final String? error;

  factory _$ApiError([void Function(ApiErrorBuilder)? updates]) =>
      (new ApiErrorBuilder()..update(updates))._build();

  _$ApiError._({this.status, this.error}) : super._();

  @override
  ApiError rebuild(void Function(ApiErrorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ApiErrorBuilder toBuilder() => new ApiErrorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ApiError && status == other.status && error == other.error;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, error.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ApiError')
          ..add('status', status)
          ..add('error', error))
        .toString();
  }
}

class ApiErrorBuilder implements Builder<ApiError, ApiErrorBuilder> {
  _$ApiError? _$v;

  int? _status;
  int? get status => _$this._status;
  set status(int? status) => _$this._status = status;

  String? _error;
  String? get error => _$this._error;
  set error(String? error) => _$this._error = error;

  ApiErrorBuilder();

  ApiErrorBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _error = $v.error;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ApiError other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ApiError;
  }

  @override
  void update(void Function(ApiErrorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ApiError build() => _build();

  _$ApiError _build() {
    final _$result = _$v ?? new _$ApiError._(status: status, error: error);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
