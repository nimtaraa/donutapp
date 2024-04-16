import 'package:donutapp/load.dart';
import 'package:donutapp/login.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(donut());

}
class donut extends StatelessWidget {
  const donut({super.key});

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
      title: "SweetWheel",
    home: loadin(),
    );
    
  }
}