import 'package:donutapp/model.dart';
import 'package:donutapp/thankyoupage.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class cart extends StatefulWidget {
  const cart({super.key});

  @override
  State<cart> createState() => _cartState();
}

class _cartState extends State<cart> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
            backgroundColor: Color.fromARGB(255, 255, 230, 238),
      
            appBar: AppBar(
            backgroundColor: Colors.transparent,
            automaticallyImplyLeading: false,
            title:Text("Your Cart",style: TextStyle(color: Color.fromARGB(255, 11, 38, 39) ,fontSize: 18),) ,
      ),
      body:SingleChildScrollView(
        child: Consumer<cartmodel>(
          
          builder: (context,value,child) { 

              
              return Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                Container(
                  height: 350,
                  width: double.infinity,
                  child: ListView.builder(
                    itemCount: value.cartitems.length,
                    itemBuilder:(context, index) {
                      print(value.cartitems[index][1]);
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
                                         
                                          image: DecorationImage(image: AssetImage(value.cartitems[index][0]),fit: BoxFit.contain)
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
                Container(
                  height: 170,
                  width: double.infinity,
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

                               Text(value.calculation().toString())

                                    ],
                         ),

                           Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                               Text("Convenience Fee",style: TextStyle(fontSize: 15,color: Color.fromARGB(255, 11, 38, 39)),),
                               

                                    ],
                         ),
                         ElevatedButton(onPressed:() {
                            Navigator.of(context).push(MaterialPageRoute(builder:(context) {
                              return thankyou();
                            },),);
                         }, child: Text("cart",style: TextStyle(color: Colors.black,fontSize: 10),))
                      ],
                    ),
                  ),
                )



],
              );




           },

       
        ),
      ) ,
      ),
    );
  }
}