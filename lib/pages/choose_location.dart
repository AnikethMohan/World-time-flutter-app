import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({Key? key}) : super(key: key);


  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {


  @override
  int counter=0;
  Widget build(BuildContext context) {
    print('build function ran');
    return Scaffold(

      backgroundColor:Colors.lightBlue[100],
      appBar: AppBar(
        actions: [
          Icon(Icons.location_on_outlined)
        ],
        title: Text('Select Location'),
        backgroundColor: Colors.lightBlueAccent,
        centerTitle: true,
        elevation: 0,


      ),

    );
  }
}
