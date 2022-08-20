import 'dart:convert';

import 'package:farm/screens/batiment/index.dart';
import 'package:farm/services/FermeService.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:http/http.dart' as http;

import '../../../constants/api.dart';
import '../../../models/ferme.dart';
import '../../../utils/preferences.dart';

class FarmScreen extends StatefulWidget {
  FarmScreen({Key? key}) : super(key: key);

  @override
  State<FarmScreen> createState() => _FarmScreenState();
}

class _FarmScreenState extends State<FarmScreen> {
  TextEditingController _localisationController = new TextEditingController();
  TextEditingController _nameController = new TextEditingController();
  TextEditingController _promoteurController = new TextEditingController();
  List listF = [];
  Preferences prefs = Preferences();
  String token = "";

  @override
  void initState() {
    super.initState();
    getListFermes();
  }

  getListFermes() async{

    token = (await prefs.getToken())!;
    var fermes = [];
    await http.get(Uri.parse(Url.LIST_FERME_LINK), headers: {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      'Authorization': 'Bearer $token',
    }).then((value){
      // print(json.decode(value.body)['fermes']);
      if (value.statusCode == 200) {
        List listFermes = json.decode(value.body)['fermes'];

        for(var i in listFermes){
          fermes.add(Ferme.fromJson(i));
        }

        print(fermes);
        setState(() {
          listF = fermes;
        });


      } else {
        setState(() {
          listF = [];
        });

      }
    });
  }

  List<Padding> getFermeList() {
    return listF.map((e) => Padding(
      padding: const EdgeInsets.all(4.0),
      child: Card(
        child: ListTile(

          title: Text("Ferme : ${e.nom}"),
          subtitle: Text("Créé le ${e.createdAt}"),
          trailing: FaIcon(
            FontAwesomeIcons.plus,
            color: Color.fromARGB(255, 26, 78, 28),
          ),
        ),
      ),
    )).toList();
    }





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 217, 213, 213),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding:
                EdgeInsets.only(left: 20.0, top: 20.0, bottom: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  "Mes fermes",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: const EdgeInsets.only(right:20.0),
                  child: InkWell(
                    onTap: (){
                      getListFermes();
                      // showDialog(context: context, builder: (BuildContext context) => SimpleDialog(
                      //   title: Text("Enregistrement de ferme"),
                      //   children: [
                      //     Padding(
                      //       padding: const EdgeInsets.only(top:4.0, left:15.0, right: 15.0, bottom: 4.0),
                      //       child: TextField(
                      //         controller: _nameController,
                      //         decoration: const InputDecoration(
                      //             labelText: 'Nom de la ferme',
                      //             // border: OutlineInputBorder(
                      //             //     borderRadius: BorderRadius.all(Radius.circular(10.0))
                      //             // )
                      //         ),
                      //       ),
                      //     ),
                      //     Padding(
                      //       padding: const EdgeInsets.only(top:4.0, left:15.0, right: 15.0, bottom: 4.0),
                      //       child: TextField(
                      //         controller: _localisationController,
                      //         decoration: const InputDecoration(
                      //             labelText: 'Localisation de la ferme',
                      //             // border: OutlineInputBorder(
                      //             //     borderRadius: BorderRadius.all(Radius.circular(10.0))
                      //             // )
                      //         ),
                      //       ),
                      //     ),
                      //     Padding(
                      //       padding: const EdgeInsets.only(top:4.0, left:15.0, right: 15.0, bottom: 4.0),
                      //       child: TextField(
                      //         controller: _promoteurController,
                      //         decoration: const InputDecoration(
                      //           labelText: 'Nom du promoteur',
                      //           // border: OutlineInputBorder(
                      //           //   borderRadius: BorderRadius.all(Radius.circular(10.0))
                      //           // )
                      //         ),
                      //       ),
                      //     ),
                      //     const Padding(
                      //       padding: EdgeInsets.only(left: 30.0, right:30.0, top: 8),
                      //       child: ElevatedButton(onPressed: null, child: Text("Enregistrer")),
                      //     )
                      //   ],
                      // ));
                    },
                    child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            color: Colors.white,
                          borderRadius: BorderRadius.circular(40)
                        ),
                        child: IconButton(onPressed: null, icon: FaIcon(FontAwesomeIcons.refresh, color: Colors.black, size: 15,))),
                  ),
                )
              ],
            ),
          ),
          Builder(
            builder: (context) {
              if(listF.isEmpty){
                return Center(child: CircularProgressIndicator(color: Colors.blue,));
              }
              return Column(
                children: getFermeList()
              );
            }
          )

        ],
      ),
    );
  }
}
