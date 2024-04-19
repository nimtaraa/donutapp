import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class itemm extends StatefulWidget {
  String img;
  String itemname;

   itemm({
    required this.img,
    required this.itemname,
    super.key});

  @override
  State<itemm> createState() => _itemmState();
}

class _itemmState extends State<itemm> {
  @override
  Widget build(BuildContext context) {
    
    return Container(
      child: Row(
        children: [
          SizedBox(width: 10,),
        Container(
          height: 75,
          width: 75,
          decoration: BoxDecoration(image: DecorationImage(image: AssetImage(widget.img),fit: BoxFit.contain),),
          
        ),
        SizedBox(width: 10,),
        Text(widget.itemname),
      ],),
    );
  }
}