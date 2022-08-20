// ignore_for_file: prefer_const_constructors

import 'package:farm/screens/home/index.dart';
import 'package:farm/services/AuthService.dart';
import 'package:farm/utils/enums.dart';
import 'package:flash/flash.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  final authService = AuthService();
  RequestStatus response = RequestStatus.nothing;
  bool pressed = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        body: SingleChildScrollView(
            child: Column(children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 3,
            child: Center(
                child: Image.asset(
              "assets/images/barn.png",
              width: 250,
            )),
          ),
          const SizedBox(
            height: 20,
          ),
          const Center(
              child: Text(
            "Bienvenue my Farm",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          )),
          Padding(
            padding: const EdgeInsets.only(
                left: 25.0, right: 25.0, top: 40, bottom: 10),
            child: TextField(
              keyboardType: TextInputType.text,
              textCapitalization: TextCapitalization.words,
              decoration: const InputDecoration(
                  labelText: 'Nom d\'utilisateur',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)))),
              controller: _usernameController,
            ),
          ),
          Padding(
            padding:
                EdgeInsets.only(left: 25.0, right: 25.0, top: 20, bottom: 40),
            child: TextField(
              controller: _passwordController,
              keyboardType: TextInputType.visiblePassword,
              obscureText: true,
              decoration: InputDecoration(
                  suffixIcon: Icon(Icons.remove_red_eye_sharp),
                  labelText: 'Mot de passe',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25.0, right: 25.0),
            child: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Colors.green,
                ),
                width: MediaQuery.of(context).size.width,
                height: 50,
                child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        pressed = true;
                      });
                      if (_usernameController.text == "" ||
                          _passwordController.text == "") {
                        setState(() {
                          pressed = false;
                        });
                        showFlash(
                          context: context,
                          duration: Duration(seconds: 2),
                          builder: (context, controller) {
                            return Flash(
                              backgroundColor:
                                  Color.fromARGB(222, 112, 236, 116),
                              // borderColor: Color.fromARGB(222, 112, 236, 116),
                              controller: controller,
                              behavior: FlashBehavior.fixed,
                              position: FlashPosition.bottom,
                              boxShadows: kElevationToShadow[4],
                              horizontalDismissDirection:
                                  HorizontalDismissDirection.horizontal,
                              child: FlashBar(
                                content:
                                    Text('Veuillez compléter le formulaire 😓'),
                              ),
                            );
                          },
                        );
                        return;
                      }
                      authService
                          .login(_usernameController.text,
                              _passwordController.text)
                          .then((value) {
                        if (value == true) {
                          Navigator.pushReplacement<void, void>(
                            context,
                            MaterialPageRoute<void>(
                              builder: (BuildContext context) => Home(),
                            ),
                          );
                        } else {
                          print(value);
                          setState(() {
                            pressed = false;
                          });
                          showFlash(
                            context: context,
                            duration: Duration(seconds: 2),
                            builder: (context, controller) {
                              return Flash(
                                backgroundColor:
                                    Color.fromARGB(222, 112, 236, 116),
                                // borderColor: Color.fromARGB(222, 112, 236, 116),
                                controller: controller,
                                behavior: FlashBehavior.fixed,
                                position: FlashPosition.bottom,
                                boxShadows: kElevationToShadow[4],
                                horizontalDismissDirection:
                                    HorizontalDismissDirection.horizontal,
                                child: FlashBar(
                                  content: Text(
                                      "Nom d'utilisateur ou mot de passe invalide 😌"),
                                ),
                              );
                            },
                          );
                        }
                      }).catchError((error) {
                        print(error.toString());
                        setState(() {
                          pressed = false;
                        });
                        showFlash(
                          context: context,
                          duration: Duration(seconds: 2),
                          builder: (context, controller) {
                            return Flash(
                              backgroundColor:
                                  Color.fromARGB(222, 112, 236, 116),
                              // borderColor: Color.fromARGB(222, 112, 236, 116),
                              controller: controller,
                              behavior: FlashBehavior.fixed,
                              position: FlashPosition.bottom,
                              boxShadows: kElevationToShadow[4],
                              horizontalDismissDirection:
                                  HorizontalDismissDirection.horizontal,
                              child: FlashBar(
                                content: Text("Une erreur est survenue 😌"),
                              ),
                            );
                          },
                        );
                      });
                    },
                    child: !pressed
                        ? Text(
                            'Login',
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          )
                        : CircularProgressIndicator(
                            color: Colors.white,
                          ))),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Center(
              child: Text("Mot de passe oublié?"),
            ),
          )
        ])),
      ),
    );
  }
}
