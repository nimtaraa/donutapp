import 'package:donutapp/details.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class itemm extends StatefulWidget {
  String img;
  String itemname;
  int cprice;
  String cdescription1;
  String cdescription2;

   itemm({
    required this.img,
    required this.itemname,
    required this.cprice,
    required this.cdescription1,
    required this.cdescription2,
    super.key});

  @override
  State<itemm> createState() => _itemmState();
}

class _itemmState extends State<itemm> {
  @override
  Widget build(BuildContext context) {
    
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder:(context) {
                   return details(img1: widget.img, iname: widget.itemname, iprice: widget.cprice, idescription1: widget.cdescription1, idescription2: widget.cdescription2);

        },));
      },
      child: Container(
        child: Row(
          children: [
            SizedBox(width: 10,),
          Container(
            height: 75,
            width: 75,
            decoration: BoxDecoration(image: DecorationImage(image: NetworkImage(widget.img),fit: BoxFit.contain),),
            
          ),
          SizedBox(width: 10,),
          Text(widget.itemname,style: TextStyle(color: Color.fromARGB(255, 126, 126, 126),fontWeight: FontWeight.bold)),
        ],),
      ),
    );
  }
}