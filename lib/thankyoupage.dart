import 'dart:async';

import 'package:donutapp/itemm.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class thankyou extends StatefulWidget {
List getcart;



   thankyou({
    
    required this.getcart,
    
    super.key});

  @override
  State<thankyou> createState() => _thankyouState();
}

class _thankyouState extends State<thankyou> {

  int _counter = 600; 
  bool _isYellow = false;
  bool _isred=false;

@override
  void initState() {
    super.initState();
    startTimer();
  }

  void startTimer() {
    Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        if (_counter > 0) {
          _counter--;
          if (_counter < 300) {
            _isYellow = true; 
          }
          if (_counter == 60) {
            _isred = true; 
          }
      
        } else {
          timer.cancel();
          
        }
      });
    });
  }


  @override
  Widget build(BuildContext context) {

    int minutes = _counter ~/ 60;
    int seconds = _counter % 60;


    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFF6F2),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 65),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [Center(child: Text("Thank You!",style: TextStyle(color:Color.fromARGB(255, 10, 61, 47),fontSize: 42 ,fontWeight: FontWeight.bold),),),
                Padding(
                  padding: const EdgeInsets.only(top: 28),
                  child: Text("Your order has been placed.",style: TextStyle(color: Color.fromARGB(255, 10, 61, 47),fontSize: 21,fontWeight: FontWeight.bold),),),
                  Padding(
                    padding: const EdgeInsets.only(top: 23),
                    child: Text("Check the status of your order in the Order tab.",style: TextStyle(color: Color.fromARGB(255, 10, 61, 47),fontSize: 16,fontWeight: FontWeight.w400),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Container(
                      height: 240,
                      width: 240,
                      child: LottieBuilder.asset("sourcess/Animation02.json")
                    ),
                  ),
                    Padding(
                      padding: const EdgeInsets.only(top: 25),
                      child: Text("Estimated preparation time",style: TextStyle(color: Color.fromARGB(255, 10, 61, 47),fontSize: 18,fontWeight: FontWeight.bold)),
                    ),
                      Text(
                    '${minutes.toString().padLeft(2, '0')}:${seconds.toString().padLeft(2, '0')}',
                    style: TextStyle(fontSize: 20, color:_isred ? Colors.red : (_isYellow ? Color.fromARGB(255, 163, 148, 8) : Color.fromARGB(255, 20, 83, 3)),fontWeight: FontWeight.bold),
                  ),        

                  Padding(
                    padding: const EdgeInsets.only(top: 36,right: 15,left: 15),
                    child: Container(
                      height: 132,
                      width: double.infinity,
                      decoration: BoxDecoration(borderRadius:BorderRadius.circular(20),color: Colors.white),
                      child: Padding(
                        padding:  EdgeInsets.only(right: 5,left: 5,bottom: 5),
                        child: ListView.builder(
                          itemCount: widget.getcart.length,
                          itemBuilder:(context, index) {
                        
                            return SizedBox(
                              height: 35,
                              child: ListTile(
                                 title:Text("${widget.getcart[index][1]}",style: TextStyle(fontSize: 12),),
                                 trailing: Text("${widget.getcart[index][3]}",style: TextStyle(fontSize: 13),),
                              
                                                      
                              ),
                            );
                          
                        },),
                      ),
                    ),
                  ),
                  ],
            ),
          ),
        ),
      ));
  }
}