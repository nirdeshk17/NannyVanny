import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:nannyvanny/dataholders.dart';
import 'package:nannyvanny/drawer.dart';

import 'package:nannyvanny/home.dart';
import 'package:http/http.dart' as http;



class splash extends StatefulWidget {
  @override
  _splashState createState() => _splashState();
}

class _splashState extends State<splash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF66a2ba),
      body: Center(
        child:Image(image: AssetImage('assets/images/logo.png'),fit: BoxFit.fill),
      ),
    );
  }
  @override
  void initState() {
    Timer(Duration(seconds: 3),()=> getData().then((sucess){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>drawer()));
    }));
  }
  getData() async {
    var uri = Uri.parse("http://cgprojects.in/flutter/");
    print(uri);
    var data = await http.get(uri);
    var response = jsonDecode(data.body);
    setState(() {
      currentBooking = response["current_bookings"];
      packages = response["packages"];
    });
  }
}

