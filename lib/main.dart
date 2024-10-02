import 'package:flutter/material.dart';
import 'package:newsapp/view/home.dart';
import 'package:newsapp/view/splash.dart';

void main(){
  runApp(
    const Newsapp()
  );
}

class Newsapp extends StatefulWidget {
  const Newsapp({super.key});

  @override
  State<Newsapp> createState() => _NewsappState();
}

class _NewsappState extends State<Newsapp> {

  bool showingsplash = true;

  LoadHome(){
    Future.delayed(Duration(seconds: 3),() {
      setState(() {
        showingsplash = false;
      });
    },);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    LoadHome();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "News Snack",
      home: showingsplash ? splash() : Homescreen()
    );
  }
}
