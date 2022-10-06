import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:world_time/pages/choose_location.dart';

class Home extends StatefulWidget {

  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {


  @override
  Widget build(BuildContext context) {

        try{


        print("data is $data");
        }
        catch(e){
          print('error found$e');
        }
    return Scaffold(
    body: SafeArea(
      child: Column(
        children: <Widget>[
          SizedBox(height: 10),
          TextButton.icon(onPressed: (){
            Navigator.pushNamed(context, '/location');
          }, icon: Icon(Icons.edit_location), label: Text('Edit location ')),
        ],
      ),
    ),

    );
  }
}
