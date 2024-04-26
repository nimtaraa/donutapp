import 'package:donutapp/model.dart';
import 'package:donutapp/thankyoupage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

class cart extends StatefulWidget {
  const cart({super.key});

  @override
  State<cart> createState() => _cartState();
}

class _cartState extends State<cart> {
  List itemcart=[];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
            backgroundColor: Color.fromARGB(255, 255, 230, 238),
      
            appBar: AppBar(
            backgroundColor: Colors.transparent,
            automaticallyImplyLeading: false,
            title:Container(
               decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white
            ),
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Text("Your Cart",style: TextStyle(color: Color.fromARGB(255, 97, 97, 97),fontSize: 13,),),
              )) ,
      ),
      body:SingleChildScrollView(
        child: Consumer<cartmodel>(
          
          builder: (context,value,child) { 

              
              return Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                Container(
                  height: 300,
                  width: double.infinity,
                  child: ListView.builder(
                    itemCount: value.cartitems.length,
                    itemBuilder:(context, index) {

                      itemcart.add(value.cartitems[index]);

                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15)
                              ),            
                                   child: ListTile(
                                    
                                    leading: Stack(
                                      children:[
                                        
                                        Container(
                                        height: 55,
                                        width: 55,
                                        decoration: BoxDecoration(
                                         
                                          image: DecorationImage(image: NetworkImage(value.cartitems[index][0]),fit: BoxFit.contain)
                                        ),
                                      ),
                                      Container(
                                        height: 25,
                                        width: 25,
                                        decoration: BoxDecoration(
                                          color: Color.fromARGB(255, 11, 38, 39),
                                          shape: BoxShape.circle
                                        ),
                                        child: Center(child: Text(value.cartitems[index][3].toString(),style: TextStyle(color: Colors.white,fontSize: 13),)),
                                      )
                                      ]
                                    ),
                                    title: Text(value.cartitems[index][1],style: TextStyle(color: Color.fromARGB(255, 11, 38, 39)
                                    ,fontSize: 15,fontWeight: FontWeight.bold),),
                                    subtitle: Text("Rs ${value.cartitems[index][2].toString()}.00",style: TextStyle(color: Color.fromARGB(255, 11, 38, 39),fontSize: 12),),

                                    trailing: IconButton(onPressed:() {
                                      Provider.of<cartmodel>(context,listen: false).removeitem(index);

                                    }, icon: Icon(Icons.delete,size: 17,color: Colors.black,)),
                                   ),
                      ),
                    );


                    },
                    
                    
                    
                    ),

                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15,right: 15),
                  child: Container(
                    width: double.infinity,
                    child: Divider(
                        height: 1,
                        color: Color.fromARGB(87, 0, 0, 0),
                     ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Stack(
                    children: [
                      
                          //  Positioned(
                          //   top: 80,
                          //   right: 240,
                          //    child: Container(
                          //                            height: 200,
                          //                            width: 200,
                          //                            decoration: BoxDecoration(
                          //                              shape: BoxShape.circle,
                          //                              color: Colors.amber
                          //                            ),
                          //                          ),
                          //  ),
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage("sourcess/backgrountC.png",),fit: BoxFit.contain,opacity: 0.3),
                          borderRadius: BorderRadius.circular(12),
                          color: const Color.fromRGBO( 0, 0, 0,0.1)
                        ),
                        child:Padding(
                          padding: const EdgeInsets.only(left: 10,right: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                                 Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                   children: [
                                     SizedBox(
                                        
                                        height: 80,
                                        width: 150,
                                        child: LottieBuilder.asset("sourcess/animation05.json"),
                                      ),
                                             Container(
                                          width: 150,
                                          child: TextField(
                                            
                                            keyboardType: TextInputType.name,
                                            decoration: InputDecoration(
                                              hintText: "Name",
                                              
                                              hintStyle: TextStyle(fontSize: 12),
                                              focusedBorder: UnderlineInputBorder(
                                                borderSide: BorderSide(color: Color.fromARGB(143, 62, 62, 62))
                                          
                                              )
                                              
                                            ),
                                          ),
                                        ),
                                   ],
                                 ),
                                  Container(
                                    width: double.infinity,
                                    child: Row(
                                      mainAxisAlignment:MainAxisAlignment.end,
                                      children: [
                                        
                          
                                        Container(
                                          width: 150,
                                          child: TextField(
                                            
                                            keyboardType: TextInputType.number,
                                            decoration: InputDecoration(
                                              hintText: "CCV",
                                               hintStyle: TextStyle(fontSize: 12),
                                             
                                              focusedBorder: UnderlineInputBorder(
                                                borderSide: BorderSide(color: Color.fromARGB(143, 62, 62, 62))
                                          
                                              )
                                              
                                            ),
                                          ),
                                        ),
                          
                                      ],
                                    ),
                                  ),
                          
                          
                                   Container(
                                    width: double.infinity,
                                    child: Row(
                                      mainAxisAlignment:MainAxisAlignment.spaceBetween,
                                      children: [
                                 Container(
                                          width: 150,
                                          child: TextField(
                                            
                                            keyboardType: TextInputType.number,
                                            decoration: InputDecoration(
                                              hintText: "1234   5678    9101",
                                              hintStyle: TextStyle(fontSize: 12),
                      
                                              focusedBorder: UnderlineInputBorder(
                                                borderSide: BorderSide(color: Color.fromARGB(143, 62, 62, 62))
                                          
                                              )
                                              
                                            ),
                                          ),
                                        ),
                          
                                        Container(
                                          width: 150,
                                          child: TextField(
                                            
                                            keyboardType: TextInputType.datetime,
                                            decoration: InputDecoration(
                                              hintText: "DD/MM/YYYY",
                                              hintStyle: TextStyle(fontSize: 12),
                      
                                              focusedBorder: UnderlineInputBorder(
                                                borderSide: BorderSide(color: Color.fromARGB(143, 62, 62, 62))
                                          
                                              )
                                              
                                            ),
                                          ),
                                        ),
                          
                                      ],
                                    ),
                                  ),
                          
                                  SizedBox(height: 15,)
                            ],
                          ),
                        )
                      ),
                 
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15,right: 15),
                  child: Container(
                    width: double.infinity,
                    child: Divider(
                        height: 1,
                        color: Color.fromARGB(87, 0, 0, 0),
                     ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15,right: 15,top: 12),
                  child: Container(
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                         Text("Summary",style: TextStyle(fontSize: 20,color: Color.fromARGB(255, 11, 38, 39),fontWeight: FontWeight.bold),),
                          SizedBox(height: 10,),
                         Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                               Text("Subtotal",style: TextStyle(fontSize: 15,color: Color.fromARGB(255, 11, 38, 39)),),

                               Text(value.calculation())

                                    ],
                         ),

                           Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                               Text("Convenience Fee",style: TextStyle(fontSize: 15,color: Color.fromARGB(255, 11, 38, 39)),),
                               Text("-${(double.parse(value.calculation())*0.05).toString()}")

                                    ],
                         ),
                          Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                               Text("Total",style: TextStyle(fontSize: 18,color: Color.fromARGB(255, 11, 38, 39),fontWeight: FontWeight.bold),),
                               Text(((double.parse(value.calculation()))-(double.parse(value.calculation())*0.05)).toString(),style: TextStyle(fontSize: 15,color: Color.fromARGB(255, 11, 38, 39),fontWeight: FontWeight.bold),)

                                    ],
                         ),
                         
                         ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            fixedSize: Size(400, 29),
                            backgroundColor: Color.fromARGB(255, 239, 66, 124)

                          ),
                          
                          
                          onPressed:() {
                            print(itemcart);
                            Navigator.of(context).push(MaterialPageRoute(builder:(context) {
                              return thankyou(getcart: itemcart,);
                            },),);
                         }, child: Text("Place Order",style: TextStyle(color: const Color.fromARGB(255, 255, 255, 255),fontSize: 15,fontWeight: FontWeight.bold),))
                      ],
                    ),
                  ),
                ),
      

],
              );




           },

       
        ),
      ) ,
      ),
    );
  }
}