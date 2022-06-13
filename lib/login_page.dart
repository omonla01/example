
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
const design =  TextStyle(
               fontSize: 30,
               fontWeight: FontWeight.bold
             );
class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
           
             Text('WELCOME BACK',
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
                   hintText: 'E-mail',
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
           GestureDetector(
             onTap: () {
               Navigator.pushNamed(context, '/first');
             },
             child: Container(
               padding: EdgeInsets.symmetric(vertical: 10, horizontal: 50),
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(15),
                 color: Colors.red,
               ),
               child: Text('LOGIN',
               style: design
               ),
               ),
               ),
               SizedBox(
                 height: 25,
               ),
               Row( mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Text('Not a User? ',
                   style: design,
                   ),
                   
                     GestureDetector(
             onTap: () {
               Navigator.pushNamed(context, '/second');
             },
                      child: Text('Sign Up',
                                   style: TextStyle(
                                     fontSize: 20,
                                     fontWeight: FontWeight.bold,
                                     color: Colors.deepOrange
                                   ),
                                   ),
                    )
                 ],
               ),
              
           ],
           
               ),
               ),
                            ));
         
  }
}