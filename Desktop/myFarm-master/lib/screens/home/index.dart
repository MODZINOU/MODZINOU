import 'package:farm/screens/home/components/activities.dart';
import 'package:farm/screens/home/components/farms.dart';
import 'package:farm/screens/home/components/profile.dart';
import 'package:farm/screens/login/index.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentTabindex = 0;
  @override
  Widget build(BuildContext context) {
    final _kScreens = [FarmScreen(), ActivityScreen(), ProfileScreen()];

    final _kbottomNavBarItems = [
      const BottomNavigationBarItem(
          icon: FaIcon(FontAwesomeIcons.houseCrack), label: 'Fermes'),
      const BottomNavigationBarItem(
          icon: FaIcon(FontAwesomeIcons.rightLeft), label: 'Activités'),
      const BottomNavigationBarItem(
          icon: FaIcon(FontAwesomeIcons.user), label: 'Profile'),
    ];

    assert(_kScreens.length == _kbottomNavBarItems.length);

    final bottomNavBar = BottomNavigationBar(
      selectedItemColor: Colors.green,
      unselectedItemColor: Colors.black,
      items: _kbottomNavBarItems,
      currentIndex: currentTabindex,
      type: BottomNavigationBarType.fixed,
      onTap: (int index) {
        setState(() {
          currentTabindex = index;
        });
      },
    );
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("MyFarm"),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushReplacement<void, void>(
                  context,
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) => Login(),
                  ),
                );
              },
              icon: const FaIcon(
                FontAwesomeIcons.rightFromBracket,
                color: Colors.white,
                size: 20,
              ))
        ],
      ),
      body: _kScreens[currentTabindex],
      bottomNavigationBar: bottomNavBar,
    );
  }
}
