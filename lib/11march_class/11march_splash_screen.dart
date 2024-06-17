

import 'dart:async';

import 'package:flutter/material.dart';


import 'first_page.dart';
import 'second_page.dart';

class SplashScreen extends StatefulWidget{
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
   Timer(Duration(seconds: 5), () {
     Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomePage ()));
   });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Center(
            child: Container(
              width: 200,height: 250,
              child: Image.asset("asset/images/tenant.png",),
            ),
          ),
          Text("My Society App",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
        ],
      ),
    );
  }
}