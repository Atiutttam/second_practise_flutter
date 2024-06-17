

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePageSf extends StatefulWidget{

  @override
  State<HomePageSf> createState() => _HomePageSfState();
}

class _HomePageSfState extends State<HomePageSf> {
  var nameController=TextEditingController();

  final String USER_NAME_KEY="uName";

  String ? name;

  @override
  void initState() {
    super.initState();
    getNamefromPref();

  }

  void getNamefromPref()async{

    var prefs=await SharedPreferences.getInstance();
    name=prefs.getString(USER_NAME_KEY);
    setState(() {

    });
  }

  void setNameInPref({required String nameByUser})async{
    // SharedPreferences.getInstance().then((value) {
    //
    // });

    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(USER_NAME_KEY, nameByUser);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page Sf"),
      ),
      body: Column(
        children: [
          Text("Welcome ${name ?? "Guest"}"),
          SizedBox(height: 11,),
          TextField(
            controller: nameController,

          ),
          SizedBox(height: 11,),
          ElevatedButton(onPressed: (){

            ///Save name in prefs
            if(nameController.text.isNotEmpty){
            setNameInPref(nameByUser: nameController.text);}

          }, child: Text("save"))
        ],

      ),
    );
  }
}