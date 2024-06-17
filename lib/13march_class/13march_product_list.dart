

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:second_practise/13march_class/13march_appconstant.dart';
import 'package:second_practise/13march_class/product_details_page.dart';

class ProductListPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Navigating from Product list Page to Product Details Page"),
      ),
      body: ListView.builder(
          itemCount: AppConstant.listProduct.length,
          itemBuilder: (context, index){
            var currItem=AppConstant.listProduct[index];
        return ListTile(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder:
                (context)=>ProductDetailPage(ItemIndex:index)));
          },
          leading: Container(
            height: 50,width: 50,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(currItem["prodImgurl"])
              )
            ),
          ),
          title: Text(currItem["prodName"]),
          subtitle: Text(currItem["prodDesc"]),
        );
      }),
        

    );
  }
}