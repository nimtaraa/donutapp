import 'package:donutapp/model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

class details extends StatefulWidget {
  String img1;
  String iname;
  int iprice;
  String idescription1;
  String idescription2;
  

  details({
    required this.img1,
    required this.iname,
    required this.iprice,
    required this.idescription1,
    required this.idescription2,
    super.key});

  @override
  State<details> createState() => _detailsState();
}

class _detailsState extends State<details> {

int a=1;
String c='';
List detailsitems=[];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        
          backgroundColor: Color.fromARGB(255, 255, 230, 238),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
        leading: Padding(
          padding:  EdgeInsets.all(8.0),
          child: Container(
            height: 10,
            width: 10,
            decoration: BoxDecoration(
              boxShadow: [BoxShadow(
                blurRadius: 1.5,
                color: const Color.fromARGB(255, 210, 209, 209)
              )],
              color: Colors.white,
              borderRadius: BorderRadius.circular(13)
            ),
            child: IconButton(onPressed:() {
              Navigator.of(context).pop();
            
            }, icon: Icon(Icons.arrow_back_ios,color: const Color.fromARGB(255, 0, 0, 0),size: 22,)),
          ),
        ),
      ),
      
      body: SingleChildScrollView(
        child: Column(
          children: [

         Center(
           child: Container(
            height: 300,
            width: 300,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(widget.img1),fit: BoxFit.contain)
            ),
           ),
         ),
         Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white
            ,
           borderRadius: BorderRadius.only(
            topLeft: Radius.circular(23),
            topRight: Radius.circular(23),
            
           )
          ),
          child: Padding(
                      padding: const EdgeInsets.only(top: 15,),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
            
                      Padding(
                      padding: const EdgeInsets.only(left: 14,right: 14),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(widget.iname,style: TextStyle(color: Color.fromARGB(255, 11, 38, 39),fontSize:28 ,fontWeight: FontWeight.w500),),
                            Container(
                        height: 40,
                        width: 40,
                              decoration: BoxDecoration(
                                color:Color.fromARGB(255, 11, 38, 39) ,
                                shape: BoxShape.circle
                              ),
                              child: IconButton(onPressed:() {
                              
                                
                              }, icon: Icon(Icons.favorite_rounded,size: 22,color: Color.fromARGB(255, 255, 255, 255),)),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 20,),
                   Padding(
                      padding: const EdgeInsets.only(left: 14,right: 14),
                     child: Text(widget.idescription1,style: TextStyle(color: Color.fromARGB(255, 11, 38, 39),fontSize:16 ,fontWeight: FontWeight.w500),),
                   ),
            
            SizedBox(height: 20,),
                   Padding(
                      padding: const EdgeInsets.only(left: 14,right: 14),
                     child: Text("Allergen & Ingredient",style: TextStyle(color: Color.fromARGB(255, 11, 38, 39),fontSize:16 ,fontWeight: FontWeight.w500),),
                   ),
                   Padding(
                      padding: const EdgeInsets.only(left: 14,right: 14),
                     child: Text(widget.idescription2,style: TextStyle(color: Color.fromARGB(255, 11, 38, 39),fontSize: 13),),
                   ),
                    Container(
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
               topLeft: Radius.circular(33),
               topRight: Radius.circular(33),
              
            ),
            color:Color.fromARGB(255, 255, 230, 238),
          ),
          child: Padding(
            padding: const EdgeInsets.only(right: 20,left: 20,top: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                                       Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text("Price",style: TextStyle(color: Color.fromARGB(255, 11, 38, 39),fontSize: 15),),
                                              Text("Rs.${widget.iprice}.00",style: TextStyle(color: Color.fromARGB(255, 11, 38, 39),fontSize: 18,fontWeight: FontWeight.bold),)
                                            ],
                                          ),
                                          

                                Row(
                                  children: [
                                    SizedBox(
                                      height: 18,
                                      child: ElevatedButton(onPressed:() {
                                         if (a>1) {
                                        setState(() {
                                           a--;
                                           
                                        });
                                           print(a);
                                         }

                                        }, 
                                      style: ElevatedButton.styleFrom(
                                        shape: CircleBorder(),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.only(bottom: 20),
                                        child: Icon(Icons.minimize,color: Color.fromARGB(255, 0, 0, 0),size: 12,),
                                      )
                                      
                                      ),
                                    ),
                                    Text("$a",style: TextStyle(color: Colors.black,fontSize:14 ),),

                                    SizedBox(
                                      height: 15,
                                      child: ElevatedButton(onPressed:() {  
                                        setState(() {
                                                 a++;

                                        });
                                         print(a);
                                      
                                      }, 
                                      style: ElevatedButton.styleFrom(
                                        shape: CircleBorder(),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.only(bottom: 13),
                                        child: Icon(Icons.add,color: Color.fromARGB(255, 0, 0, 0),size: 15,),
                                      )
                                      
                                      ),
                                    ),
                                  ],
                                )

                                        ],
                                       ),

                                       Padding(
                                         padding: const EdgeInsets.only(top: 55,bottom: 10),
                                         child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                          
                                            backgroundColor: Color.fromARGB(255, 234, 182, 100),
                                            shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                                            fixedSize: Size(500, 60)
                                          ),
                                          onPressed:() {

                                         detailsitems.add([widget.img1,widget.iname,widget.iprice*a,a]); 

                                           
                                           for (int i = 0; i < detailsitems.length; i++) {
                                             
                                             Provider.of<cartmodel>(context,listen: false).additemtocart(detailsitems[i], i);



                                           }


                                         }, child: Text("Add to Bag",style: TextStyle(color: Colors.white,fontSize: 15),)),
                                       )
              ],
            ),
          ),
         )
              ],
            ),
          ),
         ),
        


          ],
        ),
      ),
      
      
      ),
    );
  }
}