import 'dart:convert';

import "package:http/http.dart" as http;

import '../constants/api.dart';
import '../models/ferme.dart';
import '../utils/preferences.dart';

class FermeService {
  Preferences prefs = Preferences();
  String token = "";

  _setHeaders() async {
    token = (await prefs.getToken())!;
    return {
        'Accept': 'application/json',
        'Authorization': 'Bearer $token'
    };
  }

  // Créer une ferme
  create(String nom, String village, String department, String promoteur,
      String userId) async {
    final response = await http.post(Uri.parse(Url.CREATE_FERME_LINK),
        headers: _setHeaders(),
        body: jsonEncode({
          "nom": nom,
          "village": village,
          "department": department,
          "promoteur": promoteur,
          "user_id": userId
        }));

    if (response.statusCode == 200 && jsonDecode(response.body)['success']) {
      return true;
    } else {
      return false;
    }
  }

  // Retourne la liste de toutes les fermes
  read() async {
    token = (await prefs.getToken())!;
    await http.get(Uri.parse(Url.LIST_FERME_LINK), headers: {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      'Authorization': 'Bearer $token',
    })
        .then((value){
      if (value.statusCode == 200) {
          List listFermes = json.decode(value.body)['fermes'];
          var fermes = [];
          for(var i in listFermes){
            fermes.add(Ferme.fromJson(i));
          }
          return fermes;

        } else {
          return [];
        }
    });
    //
  }
}
