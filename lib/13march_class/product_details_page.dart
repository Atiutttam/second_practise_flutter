

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:second_practise/13march_class/13march_appconstant.dart';

class ProductDetailPage extends StatelessWidget{

  int ItemIndex;
  ProductDetailPage({required this.ItemIndex});

  @override
  Widget build(BuildContext context) {

    var currItemsDetails=AppConstant.listProduct[ItemIndex];

   return Scaffold(

     appBar: AppBar(
       title: Center(child: Text(currItemsDetails["prodName"])),
     ),
     body: Column(
       children: [
         Container(
             child: Image.asset(currItemsDetails["prodImgurl"],fit: BoxFit.fill)),
         Text(currItemsDetails["prodDesc"],style: TextStyle(fontSize: 25,color: Colors.blue),),
         Text("${currItemsDetails["year"]}",style: TextStyle(fontSize: 20),),

       ],
     ),

   );
  }
}