import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:world_time/services/world_time.dart';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  State<Loading> createState() => _LoadingState();

}

class _LoadingState extends State<Loading> {
Map? data;
late String timed='loading';

 void  setupWorldTime() async{
 WorldTime instance= WorldTime(location: 'Berlin',flag: 'germany.png',url: 'Europe/Berlin');
  await instance.getTime();
  Navigator.pushReplacementNamed(context, '/home',arguments: (){
    flag:instance.flag;
    location:instance.location;

    time:instance.time;
    data=ModalRoute.of(context)!.settings.arguments as Map;



  });

 }

  @override
  void initState() {
    super.initState();
    setupWorldTime();


  }
  @override
  Widget build(BuildContext context) {
   // SafeArea(child:Container());
   return Scaffold(
      body: Padding(padding: EdgeInsets.all(50),

        child: Text('Loading'
        ,
          style: TextStyle(fontWeight: FontWeight.bold   ),
        ),


      ),
    );
  }
}