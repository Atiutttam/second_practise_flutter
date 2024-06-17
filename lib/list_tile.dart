

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class MyListTile extends StatelessWidget{

  List<Map<String, dynamic>> MaintenanceData=[
    {
      "month":"Jan 24 to Mar 24",
      "Bill Rs": 12500,
      "Paid Rs": 10400,
    },
    {
      "month":"Apr 24 to Jun 24",
      "Bill Rs": 12600,
      "Paid Rs": 10500,
    },
    {
      "month":"July 24 to Sep 24",
      "Bill Rs": 12700,
      "Paid Rs": 10600,
    },
    {
      "month":"Oct 24 to Dec 24",
      "Bill Rs": 12800,
      "Paid Rs": 10700,
    },
    {
      "month":"Jan 25 to Mar 25",
      "Bill Rs": 12900,
      "Paid Rs": 10800,
    }

  ];
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text("Basics of ListTile widget"),
     ),
     body: ListView.builder(

       itemCount: MaintenanceData.length,
         itemBuilder: (context, index){
           return Container(
             decoration: BoxDecoration(
               border: Border(bottom:BorderSide(color:Colors.red,width: 0.5)) ),
               // border: index==4 ? Border(
               //     top: BorderSide(color:Colors.blue,width: 0.5),
               //     bottom:BorderSide(color:Colors.blue,width: 0.5)):Border(top: BorderSide(color:Colors.blue,width: 0.5)) ),
             child: ListTile(
               // leading: Image.asset("asset/images/tenant.png",),
               title: Text(MaintenanceData[index]["month"]),
               subtitle: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Text("Bill Rs${MaintenanceData[index]["Bill Rs"]}"),
                   Text("Paid Rs${MaintenanceData[index]["Paid Rs"]}")
                 ],
               ),
               trailing: Icon(Icons.arrow_forward_ios),
             ),
           );
         }),
   );
  }
}