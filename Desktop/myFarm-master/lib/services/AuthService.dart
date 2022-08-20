import 'dart:convert';

import 'package:farm/constants/api.dart';
import 'package:farm/models/user.dart';
import 'package:farm/utils/preferences.dart';
import 'package:http/http.dart' as http;

class AuthService {


  _setHeaders() => {
        'Content-type': 'application/json',
        'Accept': 'application/json',
      };

  Future<bool> login(String username, String password) async {
    final response = await http.post(Uri.parse(Url.LOGIN_LINK),
        headers: _setHeaders(),
        body: jsonEncode({"username": username, "password": password}));
    if (response.statusCode == 200) {
      print(Preferences().getToken().then((value) => value));
      Preferences().setToken(jsonDecode(response.body)['token']);
      Preferences().setId(jsonDecode(response.body)['user']['id']);
      Preferences().setEmail(jsonDecode(response.body)['user']['email']);
      Preferences().setUsername(jsonDecode(response.body)['user']['username']);

      return true;
    } else {
      return false;
    }
  }
}
