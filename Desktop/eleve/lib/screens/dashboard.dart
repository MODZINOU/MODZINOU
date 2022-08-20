import 'dart:ui';

import 'package:eleve/components/activities/index.dart';
import 'package:eleve/components/batiment/index.dart';
import 'package:eleve/components/fermes/index.dart';
import 'package:eleve/components/materiau/index.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Dashboard extends StatefulWidget {
  Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 216, 222, 231),
      appBar: AppBar(
        backgroundColor: Color(0xFF103900),
        title: Text("Elevage"),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: null,
              icon: Icon(
                Icons.notifications,
                size: 25,
                color: Colors.white,
              ))
        ],
      ),
      drawer: Drawer(
          child: Column(
        children: <Widget>[
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              color: Color(0xFF103900),
            ),
            arrowColor: Color(0xFF103900),
            accountEmail: Text(
              '@User',
              style: TextStyle(fontSize: 12),
            ),
            accountName: Text(
              'user',
              style: TextStyle(fontSize: 20),
            ),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage("assets/Images/profilePic.jpg"),
            ),
          ),
          ListTile(
            leading: FaIcon(
              FontAwesomeIcons.circleInfo,
              color: Colors.green,
            ),
            title: Text('A propos', style: TextStyle(fontSize: 16)),
          ),
          ListTile(
            leading: FaIcon(
              FontAwesomeIcons.gear,
              color: Colors.green,
            ),
            title: Text('Paramètres', style: TextStyle(fontSize: 16)),
          ),
          ListTile(
            leading: FaIcon(
              FontAwesomeIcons.signOut,
              color: Colors.green,
            ),
            title: Text('Se déconnecter', style: TextStyle(fontSize: 16)),
          ),
        ],
      )),
      body: SingleChildScrollView(
          child: Column(
        children: [
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0, left: 40, right: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Card(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Fermes()),
                      );
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width / 3,
                      child: Padding(
                        padding: const EdgeInsets.all(14.0),
                        child: Column(
                          children: [
                            FaIcon(
                              FontAwesomeIcons.cow,
                              color: Colors.green,
                              size: 40,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Fermes"),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Card(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Batiment()),
                      );
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width / 3,
                      child: Padding(
                        padding: const EdgeInsets.all(14.0),
                        child: Column(
                          children: [
                            FaIcon(
                              FontAwesomeIcons.home,
                              color: Colors.green,
                              size: 40,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Bâtiment"),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                // Card(
                //   child: Container(
                //     width: MediaQuery.of(context).size.width / 4.2,
                //     child: Padding(
                //       padding: const EdgeInsets.all(14.0),
                //       child: Column(
                //         children: [
                //           Icon(
                //             Icons.house_outlined,
                //             color: Colors.green,
                //             size: 40,
                //           ),
                //           Text("Animaux"),
                //         ],
                //       ),
                //     ),
                //   ),
                // ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0, left: 40, right: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Card(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Materiau()),
                      );
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width / 3,
                      child: Padding(
                        padding: const EdgeInsets.all(14.0),
                        child: Column(
                          children: [
                            Icon(
                              Icons.storage_sharp,
                              color: Colors.green,
                              size: 40,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Matériau"),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Card(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Activities()),
                      );
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width / 3,
                      child: Padding(
                        padding: const EdgeInsets.all(14.0),
                        child: Column(
                          children: [
                            Icon(
                              Icons.local_activity_sharp,
                              color: Colors.green,
                              size: 40,
                            ),
                            // ignore: prefer_const_constructors
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Activités"),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                // Card(
                //   child: Container(
                //     width: MediaQuery.of(context).size.width / 4.2,
                //     child: Padding(
                //       padding: const EdgeInsets.all(14.0),
                //       child: Column(
                //         children: [
                //           FaIcon(
                //             FontAwesomeIcons.sellcast,
                //             color: Colors.green,
                //             size: 40,
                //           ),
                //           Text("Vente"),
                //         ],
                //       ),
                //     ),
                //   ),
                // ),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
