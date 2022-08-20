import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Materiau extends StatefulWidget {
  Materiau({Key? key}) : super(key: key);

  @override
  State<Materiau> createState() => _MateriauState();
}

class _MateriauState extends State<Materiau> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF103900),
        title: Text("Matériau"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Card(
              child: ListTile(
                title: Text("Matériaux d'alimentation",
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
                title: Text("Matériaux de construction",
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
