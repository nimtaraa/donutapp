import 'package:donutapp/itemm.dart';
import 'package:donutapp/listt.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
          bottomNavigationBar: BottomNavigationBar(
            selectedLabelStyle: TextStyle(color: Colors.pink,fontSize: 10),
            iconSize: 22,
            selectedItemColor: Colors.pink,
            unselectedLabelStyle: TextStyle(color: Colors.grey,fontSize: 10),
            unselectedItemColor: Colors.grey,
            items: [
            BottomNavigationBarItem(
              
              icon: IconButton(onPressed:() {
              
            }, icon:Padding(
              padding: const EdgeInsets.only(top: 12),
              child: Icon(Icons.home,size: 22,),
            )),label: "",),
          
           BottomNavigationBarItem(
              
              icon: IconButton(onPressed:() {
              
            }, icon:Icon(Icons.shopping_cart,size: 22,)),label: "",),
              BottomNavigationBarItem(
              
              icon: IconButton(onPressed:() {
              
            }, icon:Icon(Icons.card_giftcard,size: 22,)),label: "",),
           BottomNavigationBarItem(
              
              icon: IconButton(onPressed:() {
              
            }, icon:Icon(Icons.person,size: 22,)),label: "",)
          ]
          
          
          ),
      
      body: SingleChildScrollView(
        child: DefaultTabController(
          length: 3,
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
          padding: const EdgeInsets.only(left: 8,top: 22,bottom: 15),
          child: Text("Categories",style: TextStyle(fontSize: 15 ,fontWeight: FontWeight.bold,color: Colors.black),),
                ),
                TabBar(
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: Colors.pink
                  ),
                 labelColor: Colors.white,
                 unselectedLabelColor: Colors.black,
                  
                  tabs: [
                 
                 Container(
                  width: 400,
                  decoration: BoxDecoration(
                                        border: Border.all(width: 1,color: Colors.black),

                    borderRadius: BorderRadius.circular(15),),
                  child: Center(child: Padding(
                    padding: const EdgeInsets.only(top: 7,bottom: 7,left: 7,right: 7),
                    child: Text("Hot drinks",style: TextStyle(fontSize: 12),),
                  )),
                 ),

                 Container(
                  width: 400,
                  decoration: BoxDecoration(
                                        border: Border.all(width: 1,color: Colors.black),

                    borderRadius: BorderRadius.circular(15)),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 7,left: 7,right: 7,bottom: 7),
                    child: Center(child: Text("Iced drinks",style: TextStyle(fontSize: 12),)),
                  ),
                 ),

                 Container(
                  width: 400,
                  decoration: BoxDecoration(
                    border: Border.all(width: 1,color: Colors.black),
                    borderRadius: BorderRadius.circular(15)),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 7,left: 7,right: 7,bottom: 7),
                    child: Center(child: Text("Donuts",style: TextStyle(fontSize: 12),)),
                  ),
                 ),

                ],
                ),
                SizedBox(height: 20,),
                Container(
                  height: 300,
                  child: TabBarView(children: [
                    Column(
                      children: [
                        itemm(img: "sourcess/Cofee1.png", itemname: "Original Coffee"),
                        itemm(img: "sourcess/Tea1.png", itemname: "Tea"),
                        itemm(img: "sourcess/nespresso1.png", itemname: "Enespresso")


                      ],
                    ),

                           Column(
                      children: [
                        itemm(img: "sourcess/Tea1(1).png", itemname: "Iced Latte"),
                        itemm(img: "sourcess/Tea1(2).png", itemname: "Iced Macchiato"),
                        itemm(img: "sourcess/Tea1(3).png", itemname: "Iced Coffee with milk")


                      ],
                    ),
            SingleChildScrollView(
              child: Column(
                        children: [
                          itemm(img: "sourcess/Cofee 1(2).png", itemname: "Tripple Chocolate"),
              
              
              Container(
                    child: Row(
                      children: [
                        SizedBox(width: 10,),
                      Container(
                        height: 110,
                        width: 75,
                        decoration: BoxDecoration(image: DecorationImage(image: AssetImage("sourcess/Tea 1(2).png"),fit: BoxFit.contain),),
                        
                      ),
                      SizedBox(width: 10,),
                      Text("Rasberry Vanilla"),
                    ],),
                  ),
              
              
                          itemm(img: "sourcess/nespresso 1(2).png", itemname: "Classic Sprinkle")
              
              
                        ],
                      ),
            ),
            

                ]))
                
                ],
          ),
        ),
      ),
      
      
      ),
    );
  }
}