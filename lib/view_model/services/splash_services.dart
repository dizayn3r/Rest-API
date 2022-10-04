import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rest_api/model/user_model.dart';
import 'package:flutter_rest_api/view_model/user_view_model.dart';

import '../../utils/Routes/routes_name.dart';

class SplashServices {
  Future<UserModel> getUserDate() => UserViewModel().getUser();

  void checkAuthentication(BuildContext context) async {
    getUserDate().then((value) async {
      print(value.token.toString());

      if (value.token.toString() == 'null' || value.token.toString() == '') {
        await Future.delayed(const Duration(seconds: 3));
        Navigator.pushNamed(context, RoutesName.login);
      } else {
        await Future.delayed(const Duration(seconds: 3));
        Navigator.pushNamed(context, RoutesName.home);
      }
    }).onError((error, stackTrace) {
      print(error.toString());
    });
  }
}
