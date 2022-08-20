import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Batiment extends StatefulWidget {
  Batiment({Key? key}) : super(key: key);

  @override
  State<Batiment> createState() => _BatimentState();
}

class _BatimentState extends State<Batiment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF103900),
        title: Text("Batiment"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Card(
              child: ListTile(
                title: Text("Bâtiment des porcs",
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                leading: IconButton(
                    onPressed: null, icon: FaIcon(FontAwesomeIcons.accusoft)),
                trailing: IconButton(
                    onPressed: null,
                    icon: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.black,
                      size: 20,
                    )),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Card(
              child: ListTile(
                title: Text("Bâtiment des moutons",
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                leading: IconButton(
                    onPressed: null, icon: FaIcon(FontAwesomeIcons.accusoft)),
                trailing: IconButton(
                    onPressed: null,
                    icon: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.black,
                      size: 20,
                    )),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 15.0),
            child: Card(
              child: ListTile(
                title: Text("Bâtiment des poules ",
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                leading: IconButton(
                    onPressed: null, icon: FaIcon(FontAwesomeIcons.accusoft)),
                trailing: IconButton(
                    onPressed: null,
                    icon: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.black,
                      size: 20,
                    )),
              ),
            ),
          )
        ],
      )),
    );
  }
}
