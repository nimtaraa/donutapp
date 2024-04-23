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
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 230, 238),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 85),
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
                      height: 300,
                      width: 300,
                      child: LottieBuilder.asset("sourcess/Animation02.json")
                    ),
                  ),
                    Padding(
                      padding: const EdgeInsets.only(top: 25),
                      child: Text("Estimated preparation time",style: TextStyle(color: Color.fromARGB(255, 10, 61, 47),fontSize: 18,fontWeight: FontWeight.bold)),
                    ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20,right: 15,left: 15),
                    child: Container(
                      height: 90,
                      width: double.infinity,
                      decoration: BoxDecoration(borderRadius:BorderRadius.circular(20),color: Colors.white),
                      child: Padding(
                        padding:  EdgeInsets.all(4.0),
                        child: ListView.builder(
                          itemCount: widget.getcart.length,
                          itemBuilder:(context, index) {
                        
                            return ListTile(
                               title:Text(widget.getcart[index][1])
                        
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