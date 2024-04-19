import 'package:donutapp/load.dart';
import 'package:donutapp/login.dart';
import 'package:donutapp/model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main(){
  
  runApp(
    
    ChangeNotifierProvider(
      
    create:(context) => cartmodel(),
    

    child: donut(),
    
    )
    
    
    );

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