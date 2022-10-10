import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:world_time/pages/choose_location.dart';

class Home extends StatefulWidget {



  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map data={};


  @override
  Widget build(BuildContext context) {

      data=data.isNotEmpty ? data : ModalRoute.of(context)!.settings.arguments as Map;
      print(data);
      //set background
      String bgImage=data['isdaytime']? 'day.png':'night.png';
      Color? bgColor=data['isdaytime']?Colors.blue[200] : Colors.indigo;
      Color texColor=data['isdaytime']?Colors.black:Colors.white;


    return Scaffold(
      backgroundColor: bgColor,
    body: Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/$bgImage'),
          fit: BoxFit.cover,
        )
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 120, 0,0),
        child: Column(
          children: <Widget>[
            SizedBox(height: 10),
            TextButton.icon(onPressed:()async{
             dynamic result =await Navigator.pushNamed(context, '/location');
             setState(() {
               data={
                 'time':result['time'],
                 'flag':result['flag'],
                 'location':result['location'] ,
                 'isdaytime':result['isdaytime'],
               };

             });
            }, icon: Icon(Icons.location_on_sharp,color: texColor,),
                 label:
            Text('Edit location ',style: TextStyle(
              color: texColor,

            ),)),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(backgroundImage: AssetImage('assets/${data['flag']}'),),
                Text(
                  data['location'],
                  style: TextStyle(
                    color: texColor,
                    fontSize: 25,
                    letterSpacing: 2,
                    fontWeight: FontWeight.bold

                  ),
                )

              ],
            ),
            SizedBox(height: 20,),
            Text(data['time'],
              style: TextStyle(
                color: texColor,
                fontSize: 66,
              ),


            ),



          ],
        ),
      ),
    ),

    );
  }
}
