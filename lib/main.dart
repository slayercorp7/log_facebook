// ignore_for_file: avoid_print, duplicate_ignore, prefer_const_constructors
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:tercer_parcial_m2/BLOC/bloc_user.dart';
import 'package:tercer_parcial_m2/UI/SCREEN/screen_pass.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        child: MaterialApp(
          debugShowCheckedModeBanner: false,

          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),

          // home: Profile(),
          home: ScreenPass(),
        ),
        bloc: BlocUser());
  }
}
