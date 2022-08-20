import 'dart:convert';

import 'package:farm/constants/api.dart';
import 'package:farm/models/user.dart';
import 'package:farm/utils/preferences.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

import '../models/batiment.dart';


class BatimentService{

  _setHeaders() => {
    'Content-type': 'application/json',
    'Accept': 'application/json',
    'Authorization': "Bearer ${Preferences().getToken()}"
  };
  
  BatimentService() {

  }

  // Batiment create
  create(String nom, double superficie, int fermeId) async{
    final response = await http.post(Uri.parse(Url.CREATE_BATIMENT_LINK),
        headers: _setHeaders(),
        body: jsonEncode({"nom": nom, "superficie": superficie, "ferme_id": fermeId}));
    if (response.statusCode == 200 && jsonDecode(response.body)['success']) {
      return true;
    } else {
      return false;
    }

  }

  // Batiment List
  read(int id) async {
    final response = await http.get(Uri.parse("${Url.LIST_FERME_LINK}/$id"),
        headers: _setHeaders());
    if (response.statusCode == 200) {
      var listBatiments = [];
      var data = jsonDecode(response.body)['batiments'];
      for(var elt in data){
        listBatiments.add(Batiment.fromJson(elt));
      }
      return listBatiments;
    } else {
      return false;
    }
  }
}