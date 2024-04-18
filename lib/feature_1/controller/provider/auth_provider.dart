import 'package:flutter/material.dart';
import 'package:individual_meetup_app/core/utils/snackbar_utils.dart';
import 'package:individual_meetup_app/feature_1/controller/services/auth_service.dart';
import 'package:individual_meetup_app/feature_1/model/auth_model.dart';
import 'package:individual_meetup_app/feature_1/view/pages/home_page.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'auth_provider.g.dart';

@riverpod
class Auth extends _$Auth {
  @override
  bool build() {
    return true;
  }

  Future<void> signIn(
      String email, String password, BuildContext context) async {
    state = true;
    try {
      final token =
          await AuthService.signIn(AuthModel(email: email, password: password));
      state = false;
      if (token!.token != "") {
        Future.sync(() => Navigator.push(
            context, MaterialPageRoute(builder: (context) => HomePage())));
        Future.sync(() => showSnackBar(context, "Login successfully", false));
      }
    } catch (e) {
      state = false;
      Future.sync(() => showSnackBar(context, "Error Occured", true));
    }
  }
}
