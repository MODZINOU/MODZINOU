import 'package:shared_preferences/shared_preferences.dart';

class Preferences {

  // token
  void setToken(String value) async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString("token", value);
  }

  Future<String?> getToken() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString("token");
  }

  // id
  Future<void> setId(int value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setInt("id", value);
  }

  Future<int?> getId() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getInt("id");
  }

  // username
  Future<void> setUsername(String? value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString("username", value!);
  }

  Future<String?> getUsername() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString("username");
  }

  // email
  void setEmail(String? value) async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString("email", value!);
  }

  Future<String?> getEmail() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString("email");
  }

}
