import 'package:freezed_annotation/freezed_annotation.dart';
part 'auth_model.freezed.dart';

@freezed
class AuthModel with _$AuthModel {
  factory AuthModel({
    required String email,
    required String password,
  }) = _AuthModel;
}
