import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:second_practise/11march_class/second_page.dart';

class HomePage extends StatelessWidget{

  var myInputController=TextEditingController();
  var emailInputController=TextEditingController();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(

          child: Column(
            children: [
              Text("I am First Page"),
              SizedBox(height: 12),
              TextField(
                controller: myInputController,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: "name",
                  hintText: "name",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12)
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(width: 1,color: Colors.blue)
                  )
                ),
              ),
              SizedBox(height: 12),
              TextField(
                controller: emailInputController,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: "email",
                  hintText: "email",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12)
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(width: 1, color: Colors.blue)
                  )
                ),
              ),
              ElevatedButton(onPressed: (){

                var name =myInputController.text;
                var email="${emailInputController.text}@gmail.com";

                if(myInputController.text.isNotEmpty && emailInputController.text.isNotEmpty) {



                  Navigator.push(context, MaterialPageRoute(
                      builder: (context) =>
                          SecondPage(
                            name: myInputController.text,
                              email:emailInputController.text))
                  );
                }




              }, child: Text("Next Page"))
            ],
          ),
        ),
      ),
    );
  }
}