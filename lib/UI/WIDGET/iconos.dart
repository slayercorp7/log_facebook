// ignore_for_file: must_be_immutable, use_key_in_widget_constructors, duplicate_ignore

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class Iconos extends StatelessWidget {
  late String path;
  late double top, left;

  Iconos({required this.path, required this.top, required this.left});
  @override
  Widget build(BuildContext context) {
    return login();
  }

  Widget login() {
    return Container(
      width: 60,
      height: 60,
      margin: EdgeInsets.only(top: top, left: left),
      child: Expanded(
          child: Image(
        image: AssetImage(path),
        fit: BoxFit.cover,
      )),
    );
  }
}
