import 'package:donutapp/firebase_options.dart';
import 'package:donutapp/load.dart';
import 'package:donutapp/model.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async{
  

WidgetsFlutterBinding.ensureInitialized();
await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);


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
    theme: ThemeData(
      
      primaryColor: Colors.amber,
      brightness:Brightness.light),
    );

  }
}