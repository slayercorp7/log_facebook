// ignore_for_file: must_be_immutable, use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';

class TextInput extends StatelessWidget {
  final String hint;
  final TextInputType inputType;
  final TextEditingController controller;
  int maxLineas = 1;
  TextInput(
      {
      // Key key,
      required this.hint,
      required this.inputType,
      required this.controller,
      this.maxLineas = 1,
      required String hintText});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 30, left: 30),
      child: TextField(
        controller: controller,
        keyboardType: inputType,
        maxLines: maxLineas,
        style: TextStyle(fontSize: 20, color: Colors.black87),
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white70,
          border: InputBorder.none,
          hintText: hint,
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white60),
              borderRadius: BorderRadius.all(Radius.circular(10))),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.lightBlue),
              borderRadius: BorderRadius.all(Radius.circular(10))),
        ),
      ),
    );
  }
}
