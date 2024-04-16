import 'package:donutapp/listt.dart';
import 'package:flutter/material.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 230, 238),
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            automaticallyImplyLeading: false,
            title: Container(
              height: 27,
              width: 160,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                   Icon(Icons.location_on_outlined,color:Color.fromARGB(200, 237, 68, 124),size: 19,),
                   Text("Choose a location",style: TextStyle(fontSize: 12,color: Color.fromARGB(255, 85, 85, 85)),),
                   Icon(Icons.arrow_drop_down,color: Color.fromARGB(255, 85, 85, 85),size: 22,)    
                ],
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(45)
              ),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Container(
                  height: 27,
                  width: 33,
                
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    boxShadow:[BoxShadow(
                      blurRadius: 3,
                      color: Color.fromARGB(255, 195, 195, 195),
                      blurStyle: BlurStyle.normal
                    )],
                    color: Colors.white
                  ),
                  child: IconButton(onPressed:() {
                    
                  }, icon: Icon(Icons.shopping_cart,color:Color.fromARGB(200, 237, 68, 124),size: 19,)),
                ),
              )
            ],
          ),
      
      body: SingleChildScrollView(
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,  
      children: [
         Padding(
           padding: const EdgeInsets.only(left: 10,top: 20),
           child: Row(
            children: [
              Text("NEW",style: TextStyle(color: Color.fromARGB(187, 0, 0, 0),fontWeight: FontWeight.bold,fontSize: 24),),
              SizedBox(width: 10,),
              Text("Pumpkin Spice donut!",style: TextStyle(color: Color.fromARGB(156, 0, 0, 0),fontSize: 18),)
            ],
           ),
                

         ),
       Padding(
         padding: const EdgeInsets.only(left: 10,top: 24),
         child: Text("Featured",style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.bold),),
       ),
       Padding(
         padding: const EdgeInsets.only(top: 30),
         child: Container(
          height: 200,
          width: double.infinity,
           child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
             child: Padding(
               padding: const EdgeInsets.only(left: 10),
               child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                    listt(imagepath: 'sourcess/donut1.png', name: 'Pumpkin Spice', price: 'Rs 400.00',),
                    
                  SizedBox(width: 20,),
                    listt(imagepath: 'sourcess/donut2.png', name: 'strawberry Lemon', price: 'Rs 450.00',),
         
               
                                SizedBox(width: 20,),
               
                                    listt(imagepath: 'sourcess/donut3.png', name: 'strawberry ', price: 'Rs 350.00',),
         
                                SizedBox(width: 20,),
               
                                  listt(imagepath: 'sourcess/donut4.png', name: 'Vanila ', price: 'Rs 250.00',),
         
                                SizedBox(width: 20,),
               
                                  listt(imagepath: 'sourcess/donut5.png', name: 'Blueberry', price: 'Rs 750.00',),
         
                                SizedBox(width: 20,),
               
                                                    listt(imagepath: 'sourcess/donut6.png', name: 'Vanila Lemon', price: 'Rs 650.00',),

                              SizedBox(width: 20,),
               
                 
                ],
               ),
             ),
           ),
         ),
       ),

      Padding(
        padding: const EdgeInsets.only(left: 8,top: 22),
        child: Text("Categories",style: TextStyle(fontSize: 15 ,fontWeight: FontWeight.bold,color: Colors.black),),
      ),
      DefaultTabController(length: 3, child: )
      ],
        ),
      ),
      
      
      ),
    );
  }
}