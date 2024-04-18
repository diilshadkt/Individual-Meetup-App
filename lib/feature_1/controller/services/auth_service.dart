import 'dart:convert';
import 'dart:developer';

import 'package:crypto/crypto.dart';
import 'package:dio/dio.dart';
import 'package:individual_meetup_app/core/utils/api_utils.dart';
import 'package:individual_meetup_app/feature_1/model/api_model.dart';
import 'package:individual_meetup_app/feature_1/model/auth_model.dart';

class AuthService {
  static Future<ApiModel?> signIn(AuthModel model) async {
    final dio = Dio();
    final convertPassword =
        sha256.convert(utf8.encode(model.password.trim())).toString();

    final fromData = FormData.fromMap({
      "username": model.email,
      "password": convertPassword,
      "grant_type": "password",
    });

    try {
      final response = await dio.post(ApiUtils().url,
          data: fromData,
          options: Options(headers: {
            "Authorization": "Basic UHJvbWlsbzpxNCE1NkBaeSN4MiRHQg==",
          }));
      if (response.statusCode == 200) {
        return ApiModel(token: response.data['response']['access_token']);
      } else {
        log("status code : ${response.statusCode}");
      }
    } catch (e) {
      log(e.toString());
    }
    return null;
  }
}
