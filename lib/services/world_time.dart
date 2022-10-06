import 'package:http/http.dart';
import 'package:flutter/material.dart';
import 'dart:convert';

class WorldTime{


  late String location;//location name for the UI
  late String time;//the time in that location
  late String flag;//url to an asset flag icon
  late String url;
  WorldTime({ required this.location,required this.flag,required this.url});

  Future<void> getTime() async {
    try {

      //make the request
      Response response = await get(
          Uri.parse('http://worldtimeapi.org/api/timezone/$url'));
      Map data = jsonDecode(response.body);
      //get properties from data
      String datetime = data['datetime'];
      DateTime now = DateTime.parse(datetime.substring(0, 26));
      //

      time = now.toString();
    }
    catch(e){
      print('Error found$e');
      time='Error 404';
    }




  }





}
