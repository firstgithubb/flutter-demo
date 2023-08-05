import 'dart:ui';

import 'package:flutter/material.dart';


import 'utils/routes.dart';

 class LogPage extends StatefulWidget{
  @override
  State<LogPage> createState() => _LogPageState();
}

class _LogPageState extends State<LogPage> {
   String name = "";
   final _formKey = GlobalKey<FormState>();

   @override
   Widget build (BuildContext context){
     return Material (
       color: Colors.white,
       child:Form(
         key: _formKey,
         child: Column (
           children: [
             Image.asset("assets/images/logimage.png", fit:BoxFit.cover),
             SizedBox(
               height: 20.0,
             ),

             Text(" Welcome",
             style:TextStyle(
               fontSize: 22,
               fontWeight: FontWeight.bold,
             ),
             ),
             SizedBox(
               height: 20.0,
             ),
             Padding(
               padding: const EdgeInsets.all(16.0),
               child: Column( children:[
                   TextFormField(
                     decoration: InputDecoration(
                         hintText: "Enter username",
                         labelText: "Username",
                       ),
                     onChanged: (value){
                       name =value;
                       setState(() {});
                     },


                   ),
                 TextFormField(
                   obscureText: true,
                   decoration: InputDecoration(
                   hintText: "Enter password",
                   labelText: "Password",
           ),



     ),
                   SizedBox(
                     height: 20.0,
                   ),
                   ElevatedButton(
                     child: Text("Login"),
                     style: TextButton.styleFrom(minimumSize: Size(120,40)),
                     onPressed: (){
                       Navigator.pushNamed(context, MyRoutes.homeRoute);
                     },
                   )



            ],



                 ),
               ),



            ],

             ),
       ),





     );
   }
}




