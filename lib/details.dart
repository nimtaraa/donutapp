import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class details extends StatefulWidget {
  const details({super.key});

  @override
  State<details> createState() => _detailsState();
}

class _detailsState extends State<details> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        
          backgroundColor: Color.fromARGB(255, 255, 230, 238),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 10,
            width: 10,
            decoration: BoxDecoration(
              boxShadow: [BoxShadow(
                blurRadius: 1.5,
                color: const Color.fromARGB(255, 210, 209, 209)
              )],
              color: Colors.white,
              borderRadius: BorderRadius.circular(13)
            ),
            child: IconButton(onPressed:() {
              Navigator.of(context).pop();
            
            }, icon: Icon(Icons.arrow_back_ios,color: const Color.fromARGB(255, 0, 0, 0),size: 22,)),
          ),
        ),
      ),
      
      body: SingleChildScrollView(
        child: Column(
          children: [

         Center(
           child: Container(
            height: 300,
            width: 300,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("sourcess/donut1.png"),fit: BoxFit.contain)
            ),
           ),
         ),
         Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white
            ,
           borderRadius: BorderRadius.only(
            topLeft: Radius.circular(13),
            topRight: Radius.circular(13)
           )
          ),
          child: Column(
            children: [
                    Text("Pumpkin Spice",style: TextStyle(color: const Color.fromARGB(1,23, 76, 79,)),)
            ],
          ),
         )


          ],
        ),
      ),
      
      
      ),
    );
  }
}