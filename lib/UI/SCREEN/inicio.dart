// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:tercer_parcial_m2/UI/WIDGET/iconos.dart';
import 'package:flutter/material.dart';

class Inicio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return login();
  }

  Widget login() {
    return Scaffold(
      body: Stack(
        fit: StackFit.loose,
        children: [
          Stack(children: [
            Container(
              width: 60,
              height: 60,
              margin: EdgeInsets.only(top: 50, left: 20),
              child: Expanded(
                  child: Image(
                image: AssetImage("assets/img/img8.png"),
                fit: BoxFit.cover,
              )),
            ),
            Container(
              width: 400,
              height: 450,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Color(0xC0D66363), Color(0xB6F35959)],
                      begin: const FractionalOffset(1.0, 0.1),
                      end: const FractionalOffset(1.0, 0.6)),
                  image: DecorationImage(
                      image: AssetImage('assets/img/img5.png'),
                      fit: BoxFit.fitWidth)),
            ),
          ]),
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 450,
                  margin: EdgeInsets.only(top: 360),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(60),
                          topRight: Radius.circular(60)),
                      gradient: LinearGradient(
                        colors: [Color(0xFF05A7A7), Color(0xB63A8DD1)],
                        begin: const FractionalOffset(1.0, 0.1),
                        end: const FractionalOffset(1.0, 0.6),
                      )),
                ),
              )
            ],
          ),
          Row(
            children: [
              Container(
                width: 200,
                height: 150,
                margin: EdgeInsets.only(top: 340, left: 100),
                alignment: Alignment.center,
                child: Divider(
                  color: Colors.black,
                  thickness: 5,
                ),
              )
            ],
          ),
          Row(
            children: [
              Expanded(
                  child: Container(
                      height: 100,
                      margin: EdgeInsets.only(top: 440),
                      alignment: Alignment.center,
                      child: Text(
                        "Relax Your Mind.. \nDay Episode",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                            color: Colors.black),
                      )))
            ],
          ),
          Row(
            children: [
              Column(
                children: [
                  Container(
                    child: Iconos(
                        path: "assets/img/image4.png", top: 550, left: 45),
                  )
                ],
              ),
              Column(
                children: [
                  Container(
                    child:
                        Iconos(path: "assets/img/img6.png", top: 550, left: 55),
                  )
                ],
              ),
              Column(
                children: [
                  Container(
                    child:
                        Iconos(path: "assets/img/img7.png", top: 550, left: 60),
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
