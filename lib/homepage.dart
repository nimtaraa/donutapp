import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:donutapp/cart.dart';
import 'package:donutapp/favourite.dart';
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


final donutss=FirebaseFirestore.instance.collection("Donutslist").snapshots();
final hot=FirebaseFirestore.instance.collection("Hot Drinks").snapshots();
final iced=FirebaseFirestore.instance.collection("Ice Drinks").snapshots();
final donutss2=FirebaseFirestore.instance.collection("Donutslist").snapshots();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFF6F2),
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            automaticallyImplyLeading: false,
            title: Container(
              height: 35,
              width: 200,
              
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                   Icon(Icons.location_on_outlined,color:Color(0xFFFF9666),size: 19,),
                   Text("Choose a location",style: TextStyle(fontSize: 12,color: Color(0xFF174C4F),),),
                   Icon(Icons.arrow_drop_down,color: Color.fromARGB(255, 85, 85, 85),size: 22,)    
                ],
              ),
              decoration: BoxDecoration(
                boxShadow: [BoxShadow(
                  blurRadius: 1,
                  color: const Color.fromARGB(255, 214, 213, 213)
                )],
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
                    Navigator.of(context).push(MaterialPageRoute(builder:(context) {
                      return cart();
                      
                    },));
                  }, icon: Icon(Icons.shopping_cart,color:Color(0xFFFF9666),size: 19,)),
                ),
              ),
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
                    Navigator.of(context).push(MaterialPageRoute(builder:(context) {
                      return favouritepage();
                      
                    },));
                  }, icon: Icon(Icons.favorite,color:Color(0xFFFF9666),size: 19,)),
                ),
              )
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            
            selectedLabelStyle: TextStyle(color:Color(0xFFFF9666),fontSize: 10),
            iconSize: 22,
            selectedItemColor: Color(0xFFFF9666),
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
                 Navigator.of(context).push(MaterialPageRoute(builder:(context) {
                      return cart();
                      
                    },));
              
            }, icon:Icon(Icons.shopping_cart,size: 22,)),label: "",),
              BottomNavigationBarItem(
              
              icon: IconButton(onPressed:() {

                 Navigator.of(context).push(MaterialPageRoute(builder:(context) {
                      return favouritepage();
                      
                    },));              
            }, icon:Icon(Icons.favorite_outline,size: 22,)),label: "",),
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
             padding: const EdgeInsets.only(left: 7,top: 20,bottom: 20),
             child: Container(
              width: 270,
              height: 40,
              
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.white,
                  width: 4,
                
              ),
              color: Colors.white,
              borderRadius: BorderRadius.circular(15)
              ),
               child: Row(
                children: [
                  Text(" NEW",style: TextStyle(color:Color(0xFF174C4F),fontWeight: FontWeight.bold,fontSize: 24),),
                  SizedBox(width: 7,),
                  Text("Pumpkin Spice donut",style: TextStyle(color: Color(0xFF174C4F),fontSize: 14),),
                  Text(" !",style: TextStyle(color: Color(0xFF174C4F),fontWeight: FontWeight.bold,fontSize: 18),),
                ],
               ),
             ),
           ),

          Padding(
          padding: const EdgeInsets.only(left: 5,top: 24),
          child: Text("Featured",style: TextStyle(fontSize: 12,color:Color(0xFF174C4F),fontWeight: FontWeight.w700),),
                 ),
                 Padding(
           padding: const EdgeInsets.only(top: 30),
           child: Container(
            height: 200,
            width: double.infinity,
             child: StreamBuilder(
              
              stream:donutss, 
              
              builder:(context, snapshot) {

                 if (snapshot.hasError) {

                  return Text("Error");
                   
                 }if(snapshot.connectionState==ConnectionState.waiting){
                       return Text("Loading...");

                 }

             
                var donutsappdoc=snapshot.data!.docs;

               return ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: donutsappdoc.length,
                itemBuilder:(context, index) {
                
                return Padding(
                  padding: const EdgeInsets.only(right: 7,left: 7),
                  child: listt(
                    imagepath: donutsappdoc[index]["img"], 
                    name:donutsappdoc[index]['name'], 
                    price: donutsappdoc[index]['price'],
                     description01: donutsappdoc[index]['description01'], 
                     description02: donutsappdoc[index]['description02'], 
                     
                     ),
                );

                    

                 
               },);

              },
              
              
              
              )

           ),
                 ),
          
                Padding(
          padding: const EdgeInsets.only(left: 8,top: 22,bottom: 15),
          child: Text("Categories",style: TextStyle(fontSize: 12 ,fontWeight: FontWeight.w700,color: Color(0xFF174C4F)),),
                ),
                TabBar(
                   indicatorColor: Colors.transparent,
                  indicator: BoxDecoration(
                  border: Border.all(
                  color: Colors.white,
                    ),
                    borderRadius: BorderRadius.circular(14),
                   color:Color(0xFFFF9666)
                   
                  ),
                 labelColor: Colors.white,
                 unselectedLabelStyle: TextStyle(fontWeight: FontWeight.w600),
        
                 unselectedLabelColor: Color(0xFF174C4F),
                 
                  
                  tabs: [
                 
                 Container(
                  width: 400,
                  decoration: BoxDecoration(
                                        border: Border.all(width: 1,color: Color(0xFFFF9666)),

                    borderRadius: BorderRadius.circular(15),),
                  child: Center(child: Padding(
                    padding: const EdgeInsets.only(top: 7,bottom: 7,left: 7,right: 7),
                    child: Text("Hot drinks",style: TextStyle(fontSize: 12),),
                  )),
                 ),

                 Container(
                  width: 400,
                  decoration: BoxDecoration(
                                        border: Border.all(width: 1,color: Color(0xFFFF9666)),

                    borderRadius: BorderRadius.circular(15)),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 7,left: 7,right: 7,bottom: 7),
                    child: Center(child: Text("Iced drinks",style: TextStyle(fontSize: 12),)),
                  ),
                 ),

                 Container(
                  width: 400,
                  decoration: BoxDecoration(
                    border: Border.all(width: 1,color: Color(0xFFFF9666)),
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
                    StreamBuilder(stream: hot, builder:(context, snapshot) {
                      if (snapshot.hasError){
                        return Text("Error");
                      }
                      if(snapshot.connectionState==ConnectionState.waiting){
                        return Text("Loading...");
                      }
                      var hotdoc=snapshot.data!.docs;

                      return ListView.builder(
                        
                        itemCount: hotdoc.length,
                        itemBuilder:(context, index) {
                        
                          return itemm(
                            img: hotdoc[index]["img"], 
                            itemname: hotdoc[index]["name"], 
                            cprice: hotdoc[index]["price"], 
                            cdescription1: hotdoc[index]["description01"], 
                            cdescription2: hotdoc[index]["description02"]);
                      },);
                    },),
                    // Column(
                    //   children: [
                    //     itemm(img: "sourcess/Cofee1.png", itemname: "Original Coffee", cprice: 550, cdescription1: 'Tased the Orignal tase of coffee', cdescription2: 'Included Coffee,Traditional sets for serving tea, typically delicate and elegant, often accompanied by matching saucers.',),
                    //     itemm(img: "sourcess/Tea1.png", itemname: "Tea", cprice: 350, cdescription1: 'Tased the taste of Tea', cdescription2: 'Included Milk,Suger,tea,Traditional sets for serving tea, typically delicate and elegant, often accompanied by matching saucers.',),
                    //     itemm(img: "sourcess/nespresso1.png", itemname: "Enespresso", cprice: 650, cdescription1: 'Tased the orignal taste of Enespresso', cdescription2: 'Included Dark Coffee,Traditional sets for serving tea, typically delicate and elegant, often accompanied by matching saucers.',)


                    //   ],
                    // ),
                    StreamBuilder(
                      stream: iced, 
                      builder:(context, snapshot) {
                        if (snapshot.hasError){
                          return Text("Error");
                        }
                        if(snapshot.connectionState==ConnectionState.waiting){
                          return Text("Loading...");
                        }
                      var iceddoc=snapshot.data!.docs;
                      return ListView.builder(
                        itemCount: iceddoc.length,
                        itemBuilder:(context, index) {
                        
                        return itemm(
                          img: iceddoc[index]["img"], 
                          itemname: iceddoc[index]["name"], 
                          cprice: iceddoc[index]["price"], 
                          cdescription1: iceddoc[index]["description01"], 
                          cdescription2: iceddoc[index]["description02"]);
                      },);

                      },
                      ),
                     StreamBuilder(
                      stream:donutss2, 
                      builder:(context, snapshot) {
                        if (snapshot.hasError){
                          return Text("Error");
                        }
                        if(snapshot.connectionState==ConnectionState.waiting){
                          return Text("Loading...");
                        }
                      var donuts2doc=snapshot.data!.docs;
                      return ListView.builder(
                        itemCount: donuts2doc.length,
                        itemBuilder:(context, index) {
                        
                        return itemm(
                          img: donuts2doc[index]["img"], 
                          itemname: donuts2doc[index]["name"], 
                          cprice: donuts2doc[index]["price"], 
                          cdescription1: donuts2doc[index]["description01"], 
                          cdescription2: donuts2doc[index]["description02"]);
                      },);

                      },
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