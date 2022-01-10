
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'resource_model.freezed.dart';

@freezed
class ResourceModel<T> with _$ResourceModel<T>{

  const factory ResourceModel.success(T value) = Success<T>;
  const factory ResourceModel.loading() = Loading<T>;
  const factory ResourceModel.error([String? message]) = Error<T>;
}