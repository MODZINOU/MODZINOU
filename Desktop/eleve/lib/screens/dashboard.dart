import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Dashboard extends StatefulWidget {
  Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard>
     {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Elevage"),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: null,
              icon: Icon(
                Icons.notifications,
                size: 35,
                color: Colors.white,
              ))
        ],
      ),
      drawer: Drawer(),
      body: SingleChildScrollView(
          child: Column(
        children: [
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(25))),
              child: Card(
                child: Container(
                  // margin: EdgeInsets.only(top: 20, left: 40, right: 40, bottom: 20),
                  padding: EdgeInsets.all(15),
                  height: 80,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Portefeuille",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                            Text(
                              "500 F",
                              style: TextStyle(fontSize: 18),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                Column(
                                  children: [
                                    Icon(Icons.timelapse, size: 30),
                                    Text(
                                      "Historique",
                                      style: TextStyle(fontSize: 16),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  children: [
                                    Icon(
                                      Icons.add,
                                      size: 30,
                                    ),
                                    Text("Recharger",
                                        style: TextStyle(
                                          fontSize: 16,
                                        ))
                                  ],
                                ),
                              ],
                            )
                          ],
                        )
                      ]),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: Column(
                      children: [
                        Icon(
                          Icons.filter_frames,
                          color: Colors.green,
                          size: 40,
                        ),
                        Text("Ferme"),
                      ],
                    ),
                  ),
                ),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: Column(
                      children: [
                        Icon(
                          Icons.house_sharp,
                          color: Colors.green,
                          size: 40,
                        ),
                        Text("Bâtiment"),
                      ],
                    ),
                  ),
                ),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: Column(
                      children: [
                        Icon(
                          Icons.house_outlined,
                          color: Colors.green,
                          size: 40,
                        ),
                        Text("Animaux"),
                      ],
                    ),
                  ),
                ),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: Column(
                      children: [
                        Icon(
                          Icons.storage_sharp,
                          color: Colors.green,
                          size: 40,
                        ),
                        Text("Matériaux"),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: Column(
                      children: [
                        Icon(
                          Icons.local_activity_sharp,
                          color: Colors.green,
                          size: 40,
                        ),
                        Text("Activités"),
                      ],
                    ),
                  ),
                ),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: Column(
                      children: [
                        FaIcon(
                          FontAwesomeIcons.sellcast,
                          color: Colors.green,
                          size: 40,
                        ),
                        Text("Vente"),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
