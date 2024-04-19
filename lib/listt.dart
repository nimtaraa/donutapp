import 'package:donutapp/details.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class listt extends StatefulWidget {
  String imagepath;
  String name;
  int price;
  String description01;
    String description02;


   listt({
    
    required this.imagepath,
    required this.name,
    required this.price,
    required this.description01,
    required this.description02,
    
    super.key});

  @override
  State<listt> createState() => _listtState();
}

class _listtState extends State<listt> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder:(context) {
          return details(img1: widget.imagepath, iname: widget.name, iprice: widget.price, idescription1: widget.description01, idescription2: widget.description02);
        },));
      },
      child: Container(
      
         decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(13),
      color: Colors.white,
      boxShadow:[ BoxShadow(
        color: Color.fromARGB(255, 207, 207, 207),
        blurRadius: 2,
        blurStyle: BlurStyle.inner
      )]
         ),
         child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 5,left: 7,right: 7,),
          child: Container(
            height: 146,
            width: 145,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(widget.imagepath),fit: BoxFit.contain)
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10,top: 4),
          child: Text(widget.name,style: TextStyle(color: Colors.black,fontSize: 14,fontWeight: FontWeight.bold),),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10,top: 4),
          child: Text(widget.price.toString(),style: TextStyle(color: Colors.black,fontSize: 12),),
        )
      ],
         ),
      ),
    );
  }
}