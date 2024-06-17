

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class SecondPage extends StatelessWidget {

  String name;
  String email;

  SecondPage({ required this.name, required this.email });


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Container Basics"),
      ),
      body: Column(
        children: [
          Center(
            child: Container(
              height: 100,

              decoration: BoxDecoration(
                color: Colors.orangeAccent,
                borderRadius: BorderRadius.horizontal(right: Radius.circular(23),left: Radius.circular((25))),
                border: Border.all(
                  width: 0.75, color: Colors.red
                )
              ),
              child: Center(child: Text("Hello $name Kumar.\nMy email id is $email "
                ,style:TextStyle(fontSize: 20) ,)),
            ),
          ),
          ElevatedButton(onPressed: (){
            ///Navigator.push(context, MaterialPageRoute(builder: (context){
            ///return MyTextField();
            Navigator.pop(context);

          },

              child: Text("Back to first Page")),

               ////BACK TO FIRST PAGE
        ],
      ),
    );
  }
}
