import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ActivityScreen extends StatefulWidget {
  const ActivityScreen({Key? key}) : super(key: key);

  @override
  State<ActivityScreen> createState() => _ActivityScreenState();
}

class _ActivityScreenState extends State<ActivityScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 217, 213, 213),
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
                          child: Icon(Icons.person),
                        )),
                    title: const Text("Achat de materiaux"),
                    subtitle: const Text("Créé le 25/03/15"),
                    trailing: FaIcon(
                      FontAwesomeIcons.downLong,
                      color: Color.fromARGB(255, 26, 78, 28),
                    ),
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
                          child: Icon(Icons.person),
                        )),
                    title: const Text("Achat de materiaux"),
                    subtitle: const Text("Créé le 25/03/15"),
                    trailing: FaIcon(
                      FontAwesomeIcons.upLong,
                      color: Colors.red,
                    ),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
