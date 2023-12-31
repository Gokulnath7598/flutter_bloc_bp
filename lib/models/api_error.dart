import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'api_error.g.dart';

abstract class ApiError implements Built<ApiError, ApiErrorBuilder> {
  factory ApiError(
      [ApiErrorBuilder Function(ApiErrorBuilder builder) updates]) = _$ApiError;

  ApiError._();

  int? get status;

  String? get error;

  static Serializer<ApiError> get serializer => _$apiErrorSerializer;
}
