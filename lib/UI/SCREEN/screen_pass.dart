// ignore_for_file: use_key_in_widget_constructors, must_be_immutable, override_on_non_overriding_member, unused_field, prefer_const_constructors

import 'package:tercer_parcial_m2/BLOC/bloc_user.dart';
import 'package:tercer_parcial_m2/UI/SCREEN/inicio.dart';
import 'package:tercer_parcial_m2/UI/WIDGET/google_boton.dart';
import 'package:tercer_parcial_m2/UI/WIDGET/gradiente.dart';
import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:generic_bloc_provider/generic_bloc_provider.dart';

class ScreenPass extends StatelessWidget {
  @override
  late BlocUser userBloc;
  final _controllerUsername = TextEditingController();
  final _controllerHobbies = TextEditingController();
  @override
  Widget build(BuildContext context) {
    userBloc = BlocProvider.of(context);
    return _controlSession();
  }

  Widget _controlSession() {
    return StreamBuilder(
        stream: userBloc.AuthStatus,
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (!snapshot.hasData || snapshot.hasError) {
            return login();
          } else {
            return Inicio();
          }
        });
  }

  Widget login() {
    return Scaffold(
        body: Stack(fit: StackFit.loose, children: [
      Gradiente(),
      Row(
        children: [
          Container(
            margin: EdgeInsets.only(top: 80, left: 50),
            width: 270,
            height: 150,
            child: Text(
              "  Welcome to..\n Meditation Care",
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          )
        ],
      ),
      Row(
        children: [
          Column(
            children: [
              Container(
                width: 300,
                height: 250,
                margin: EdgeInsets.only(top: 160, left: 40),
                child: Image(
                  image: AssetImage("assets/img/img3.png"),
                  fit: BoxFit.cover,
                ),
              )
            ],
          ),
        ],
      ),
      Row(
        children: [
          Container(
            margin: EdgeInsets.only(top: 480, left: 40),
            width: 300,
            height: 150,
            child: Expanded(
                child: Text(
              "Lorem ipsum dolor sit amet consectetur adipiscing elit ut dui, pulvinar nec mauris lobortis tortor proin vitae nostra, pellentesque nullam nisl nunc auctor cursus nisi litora.",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                  fontStyle: FontStyle.italic,
                  color: Colors.black),
            )),
          )
        ],
      ),
      Row(
        children: [
          Container(
              width: 250,
              height: 80,
              margin: EdgeInsets.only(top: 600, left: 60),
              alignment: Alignment.topCenter,
              child: GoogleBtn(
                  heightC: 40.0,
                  widhtC: 180.0,
                  onPressed: () {
                    userBloc.signIn2();
                  }, //{
                  //bloc_user.signIn().then((UserCredential user) =>
                  //print("usted se a autenticado como:${user.user}"));

                  //},
                  text: "google"))
        ],
      ),
      Row(
        children: [
          Container(
              width: 250,
              height: 80,
              margin: EdgeInsets.only(top: 700, left: 60),
              alignment: Alignment.topCenter,
              child: GoogleBtn(
                  heightC: 40.0,
                  widhtC: 180.0,
                  onPressed: () {
                    userBloc.signIn3();
                  }, //{
                  //bloc_user.signIn().then((UserCredential user) =>
                  //print("usted se a autenticado como:${user.user}"));

                  //},
                  text: "facebook"))
        ],
      ),
    ]));
  }
}
