
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
const design =  TextStyle(
               fontSize: 30,
               fontWeight: FontWeight.bold
             );
class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
     body: SafeArea(
       child: Center(
         child: Column(
           
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             Text('HELLO',
             style: GoogleFonts.bebasNeue(
               fontSize:50,
             ),
             ),
           
             Text(' YOU\'RE WELCOME',
             style:design),
             SizedBox(
               height: 40,
             ),
             Padding(
               padding: const EdgeInsets.all(15.0),
               child: Container(
                 decoration: BoxDecoration(
                   color:Colors.white,
                   border: Border.all(color: Colors.grey),
                   borderRadius: BorderRadius.circular(21),
                 ),
                 child: TextField(decoration: InputDecoration(
                   hintText: 'Enter E-mail',
                 ),
                 ),
               ),
             ),
              Padding(
               padding: const EdgeInsets.all(15.0),
               child: Container(
                 decoration: BoxDecoration(
                   color:Colors.white,
                   border: Border.all(color: Colors.grey,),
                   borderRadius: BorderRadius.circular(21),
                 ),
                 child: TextField(
                   obscureText: true,
                   decoration: InputDecoration(
                   hintText: 'Enter Password',
                   fillColor: Colors.red,
                   
                 ),
                 ),
               ),
             ),
              Padding(
               padding: const EdgeInsets.all(15.0),
               child: Container(
                 decoration: BoxDecoration(
                   color:Colors.white,
                   border: Border.all(color: Colors.grey,),
                   borderRadius: BorderRadius.circular(21),
                 ),
                 child: TextField(
                   obscureText: true,
                   decoration: InputDecoration(
                   hintText: 'Confirm Password',
                   fillColor: Colors.red,
                   
                 ),
                 ),
               ),
             ),
              Container(
               padding: EdgeInsets.symmetric(vertical: 10, horizontal: 50),
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(15),
                 color: Colors.red,
               ),
               child: Text('SIGN UP',
               style: design
               ),
               ),
               SizedBox(
                 height: 20,
               ),
                GestureDetector(
             onTap: () {
               Navigator.pop(context);
             },
             child: Container(
               padding: EdgeInsets.symmetric(vertical: 10, horizontal: 50),
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(15),
                 color: Colors.transparent,
               ),
               child: Text('GO BACK',
               style: design
               ),
               ),
               ),
              
              
           ],
           
               ),
               ),
                            ));
         
  }
}