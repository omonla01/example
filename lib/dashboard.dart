// ignore_for_file: prefer_const_constructors, must_be_immutable, use_key_in_widget_constructors, avoid_unnecessary_containers, sort_child_properties_last, prefer_const_literals_to_create_immutables, import_of_legacy_library_into_null_safe
import 'package:data_connect/login_page.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart'; 
class Dashboard extends StatelessWidget {



  @override
  Widget build(BuildContext context) {

  Widget imageslidercarousel = Container(
      child: Carousel(
        boxFit:  BoxFit.fill,
        images: [
          AssetImage('images/money.png',),
          AssetImage('images/who.jpg',),
          AssetImage('images/data.jpg',),
          AssetImage('images/airtime.jpg',),
          AssetImage('images/earn.jpg',),
        ],
        autoplay: true,
        dotBgColor: Colors.blue,
        indicatorBgPadding: 1,
      ),
    );

      return MaterialApp(home:
      Scaffold(
      appBar: AppBar(
        title: Text('DATA CONNECT'),

      ),
      body: SafeArea(
        child: Column(
          children:  <Widget>[
          SizedBox(
            height: 250,
            child: Expanded(
              child: SizedBox(
                child: imageslidercarousel),
            ),
          ),
            Column(crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text('Dashboard',
                style: TextStyle(fontSize: 40,
                letterSpacing: 5,
                ),
                ),
                SizedBox(
                  child: Divider(color: Colors.blue),
                )
              ],
            ),
           Interface( text: Text('Welcome back',
           style: design,),),
           Interface( text: Text('Agent',
           style: design,),),
           Interface( text: Text('Balance',
           style: design,),),
               Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 children: [
                   Container(
                     height: 100,
                     width: 130,
                     color: Colors.red,
                     child:  FittedBox(
                       child: Expanded(
                         child: Text('ENJOY OUR REFFERAL BONUS \nEarn 10% referral bonus. Invite others to join Mobile KONNET and get instant 10% bonus of their first wallet funding credited to your wallet.',
                            style: TextStyle(fontSize: 12),
                                 ),
                       ),
                     ),
                     ),
                   SizedBox(
                     width: 10,
                   ),
                    Container(
                     height: 100,
                     width: 100,
                     color: Colors.blue,
                     child: const FittedBox(
          fit: BoxFit.contain,
          child: Text('Hello'),),
                   ),
                   SizedBox(
                     width: 10,
                   ),
                    Container(
                     height: 100,
                     width: 100,
                     color: Colors.black,
                   )
                 ],
               )     
          ],
      ),
      ),
      ),
      );
  }
}

class Interface extends StatelessWidget {

const Interface({required this.text});

  final Widget text;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: text,
       margin: EdgeInsets.only(top: 15),
       width: double.infinity,
       color: Colors.grey,
       height: 80,
       
       );
  }
}
