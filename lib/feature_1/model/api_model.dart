import 'package:freezed_annotation/freezed_annotation.dart';
part 'api_model.freezed.dart';

@freezed
class ApiModel with _$ApiModel {
  factory ApiModel({
    required String token,
  }) = _ApiModel;
}
