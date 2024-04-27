import 'package:donutapp/model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class favouritepage extends StatefulWidget {
  const favouritepage({super.key});

  @override
  State<favouritepage> createState() => _favouritepageState();
}

class _favouritepageState extends State<favouritepage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
            backgroundColor:Color(0XFFFFF6F2),
            body: SingleChildScrollView(
              child: Stack(
                children: [
                                Container(
                height: 290,
                width: double.infinity,
                decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("sourcess/newbackgroound.png"),fit: BoxFit.fill)
                ),
              ),
                  
                  
                  Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                        Row(
                          children: [
                            IconButton(onPressed:() {
                              Navigator.of(context).pop();
                            }, icon:Icon(Icons.arrow_back_ios,size: 20,color: Colors.black,)),
                            Text("Favourite",style: TextStyle(color: const Color.fromARGB(255, 30, 73, 31),fontSize: 18,fontWeight: FontWeight.bold),),
                          ],
                        ),
                        Consumer<cartmodel>(
                          
                          builder:(context, value, child) {

                           return Padding(
                             padding: const EdgeInsets.only(left: 40,right: 40,top: 25),
                             child: Container(
                                    height: 670,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(15)

                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(top: 25),
                                      child: ListView.builder(
                                        itemCount: value.favourite.length,
                                        itemBuilder:(context, index) {
                                          return Padding(
                                            padding: const EdgeInsets.only(top: 15,left: 12,right: 12),
                                            child: Container(
                                                decoration: BoxDecoration(
                                                  color: Color.fromARGB(255, 255, 223, 209),
                                                  borderRadius: BorderRadius.circular(15)
                                                ),
                                              child: ListTile(
                                                  leading:Container(
                                                         height: 50,
                                                         width: 50,
                                                      decoration: BoxDecoration(
                                                      image: DecorationImage(image: NetworkImage(value.favourite[index][0]),fit: BoxFit.contain)
                                                    ),
                                                  ) ,
                                                  title: Text(value.favourite[index][1],style: TextStyle(fontSize: 12,color: Colors.black),),
                                                  trailing: Padding(
                                                    padding: const EdgeInsets.only(top: 15,bottom: 15,left: 8,right: 1),
                                                    child: ElevatedButton(
                                                      style: ElevatedButton.styleFrom(
                                                        backgroundColor: Color(0xFFFF9666),
                                                      ),
                                                      onPressed:() {
                                                           
                                             
                                             Provider.of<cartmodel>(context,listen: false).additemtocart(value.favourite[index], index);
                                             


                                           
                                                      
                                                    }, child: Text("Buy now",style: TextStyle(fontSize: 12,color: Colors.white),)),
                                                  ),
                                              
                                              ),
                                            ),
                                          );
                                        },
                                        
                                        
                                        ),
                                    ),
                              ),
                           );
                           



                          },
                          
                          
                          
                          
                          )
                  ],
                ),
                ]
              ),
            ),
      ),
    );
  }
}