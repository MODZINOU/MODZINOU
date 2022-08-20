import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Batiment extends StatefulWidget {
  const Batiment({Key? key}) : super(key: key);

  @override
  State<Batiment> createState() => _BatimentState();
}

class _BatimentState extends State<Batiment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Animaux"),
          centerTitle: true,
          actions: [
            IconButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) => const SimpleDialog(
                            title: Text("Enregistrement des animaux"),
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    top: 4.0,
                                    left: 15.0,
                                    right: 15.0,
                                    bottom: 4.0),
                                child: TextField(
                                  decoration: InputDecoration(
                                    labelText: 'Nom animal',
                                    // border: OutlineInputBorder(
                                    //     borderRadius: BorderRadius.all(Radius.circular(10.0))
                                    // )
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    top: 4.0,
                                    left: 15.0,
                                    right: 15.0,
                                    bottom: 4.0),
                                child: TextField(
                                  decoration: InputDecoration(
                                    labelText: 'Nombre disponible',
                                    // border: OutlineInputBorder(
                                    //     borderRadius: BorderRadius.all(Radius.circular(10.0))
                                    // )
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    top: 4.0,
                                    left: 15.0,
                                    right: 15.0,
                                    bottom: 4.0),
                                child: TextField(
                                  decoration: InputDecoration(
                                    labelText: 'Prix',
                                    // border: OutlineInputBorder(
                                    //     borderRadius: BorderRadius.all(Radius.circular(10.0))
                                    // )
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    top: 4.0,
                                    left: 15.0,
                                    right: 15.0,
                                    bottom: 4.0),
                                child: TextField(
                                  decoration: InputDecoration(
                                    labelText: 'Date',
                                    // border: OutlineInputBorder(
                                    //     borderRadius: BorderRadius.all(Radius.circular(10.0))
                                    // )
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    top: 4.0,
                                    left: 15.0,
                                    right: 15.0,
                                    bottom: 4.0),
                                child: TextField(
                                  decoration: InputDecoration(
                                    labelText: 'Nom du fournisseur',
                                    // border: OutlineInputBorder(
                                    //     borderRadius: BorderRadius.all(Radius.circular(10.0))
                                    // )
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    top: 4.0,
                                    left: 15.0,
                                    right: 15.0,
                                    bottom: 4.0),
                                child: TextField(
                                  decoration: InputDecoration(
                                    labelText: 'Téléphone fournisseur',
                                    // border: OutlineInputBorder(
                                    //     borderRadius: BorderRadius.all(Radius.circular(10.0))
                                    // )
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    top: 4.0,
                                    left: 15.0,
                                    right: 15.0,
                                    bottom: 4.0),
                                child: TextField(
                                  decoration: InputDecoration(
                                    labelText: 'Observation',
                                    // border: OutlineInputBorder(
                                    //     borderRadius: BorderRadius.all(Radius.circular(10.0))
                                    // )
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    left: 30.0, right: 30.0, top: 8),
                                child: ElevatedButton(
                                    onPressed: null,
                                    child: Text("Enregistrer")),
                              )
                            ],
                          ));
                },
                icon: Icon(
                  Icons.add,
                  color: Colors.white,
                ))
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Card(
                  child: ListTile(
                    leading: Container(
                        decoration: const BoxDecoration(
                            color: Colors.grey,
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: FaIcon(
                            FontAwesomeIcons.cow,
                            color: Color.fromARGB(255, 26, 78, 28),
                          ),
                        )),
                    title: const Text("Batiment 47: Vaches"),
                    subtitle: const Text("Créé le 25/03/15"),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Card(
                  child: ListTile(
                    leading: Container(
                        decoration: const BoxDecoration(
                            color: Colors.grey,
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: FaIcon(FontAwesomeIcons.dog),
                        )),
                    title: const Text("Batiment 5: Moutons"),
                    subtitle: const Text("Créé le 25/03/15"),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
