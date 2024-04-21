import 'dart:async';

import 'package:donutapp/login.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class loadin extends StatefulWidget {
  
  const loadin({super.key});

  @override
  State<loadin> createState() => __loadingState();
}

class __loadingState extends State<loadin> {
  double percent= 0.0;
  @override
  void initState(){
    super.initState();
    _start();
  }
  void _start(){
    Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        if(percent<1.0){
          percent+=0.2;
        }else{
          timer.cancel();
          Navigator.of(context).push(MaterialPageRoute(builder:(context) {
            return LoginPage();
          },));
        }
      });
     });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 230, 238),
      body: SafeArea(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Container(
          //   height: 60,
          //   width:double.infinity,
          //   decoration: BoxDecoration(
          //     image: DecorationImage(image: AssetImage("sourcess/sweetwheel (4).png"),fit: BoxFit.contain)
              
          //   ),
          // ),
          // Container(
          //   height: 300,
          //   width: double.infinity,
          //   decoration: BoxDecoration(
          //     image: DecorationImage(image: AssetImage("sourcess/sweetwheel2.png"),fit: BoxFit.contain)
          //   ),
          // ),
         Center(
           child: Container(
            height: 220,
            width: 220,
            child: LottieBuilder.asset("sourcess/animation01.json"),
           ),
         )

        ],
      )),
    );
  }
}