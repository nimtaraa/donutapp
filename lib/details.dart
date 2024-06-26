import 'package:donutapp/button.dart';
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
List detailsitems=[];
bool addfav= false;
List addfavourite=[];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        
 backgroundColor: Color(0XFFFFF6F2),        
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
              image: DecorationImage(image: NetworkImage(widget.img1),fit: BoxFit.contain)
            ),
           ),
         ),
         Container(
          width: double.infinity,
          decoration: 
           BoxDecoration(
              color: Colors.white,
              borderRadius: 
                BorderRadius.only(
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
                                       Text(widget.iname,style: TextStyle(color:Color(0xFF174C4F),fontSize:28 ,fontWeight: FontWeight.w600),),
                                       Container(
                                          height:40,
                                          width:40,
                                          decoration: 
                                            BoxDecoration(
                                              color:Color.fromARGB(255, 251, 205, 186),
                                              shape: BoxShape.circle
                                            ),
                                          child: IconButton(onPressed:() {
                                                     setState(() {
    
                                                    addfav=!addfav;
                                                    if (addfav) {
                                             addfavourite.add([widget.img1,widget.iname,widget.iprice*1,1]);
                                                  
                                                  for (int j = 0; j < addfavourite.length; j++) {
                              
                                             Provider.of<cartmodel>(context,listen: false).additemtofav(addfavourite[j], j);
                                           }
                                                                                      showDialog(context: context, 
  
                                                      builder:(context) {
                                                             return AlertDialog(
                                                                    iconPadding: EdgeInsets.only(bottom:0,right: 20),
                                                                    title: Center(child: Text("Successfully Added to Favourite",style: TextStyle(fontSize: 15),)),
                                                                    icon: IconButton(onPressed:() {
                                                                       Navigator.of(context).pop();
                                                                           }, icon: Icon(Icons.close,size: 15,),alignment: Alignment.topRight,)
      
                                                                    );

                                                               },
  
  
                                             ); 
                                          
                                                    }
                                                    print(addfavourite);
                                  
                                                     });

                                                 }, 
                                                 icon: Icon(Icons.favorite_rounded,size: 22,color:addfav ? Color(0xFFFF9666):Colors.white)),
                                         )
                                      ],
                                    ),
                                ),
                               
                                SizedBox(height: 20,),
                                
                                Padding(
                                  padding: const EdgeInsets.only(left: 14,right: 14),
                                child: Text(widget.idescription1,style: TextStyle(color:Color(0xFF174C4F),fontSize:16 ,fontWeight: FontWeight.w500),),
                                ),
            
                                SizedBox(height: 20,),

                                Padding(
                                  padding: const EdgeInsets.only(left: 14,right: 14),
                                child: Text("Allergen & Ingredient",style: TextStyle(color:Color(0xFF174C4F),fontSize:16 ,fontWeight: FontWeight.w500),),
                                ),
                  
                                Padding(
                                  padding: const EdgeInsets.only(left: 14,right: 14),
                                child: Text(widget.idescription2,style: TextStyle(color:Color(0xFF174C4F),fontSize: 13),),
                                ),

                               Container(
                                  width: double.infinity,
                                  decoration: 
                                    BoxDecoration(
                                      borderRadius: 
                                        BorderRadius.only(
                                          topLeft: Radius.circular(33),
                                          topRight: Radius.circular(33),
              
                                        ),
                                      color:Color(0XFFFFF6F2),  
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
                                         padding: const EdgeInsets.only(top: 35,bottom: 10),
                                         child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                          
                                            backgroundColor: Color(0xFFFF9666),
                                            shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                                            fixedSize: Size(366, 55)
                                          ),
                                          onPressed:() {
                                         
                                         detailsitems.add([widget.img1,widget.iname,widget.iprice*a,a]); 

                                           
                                           for (int i = 0; i < detailsitems.length; i++) {
                                             
                                             Provider.of<cartmodel>(context,listen: false).additemtocart(detailsitems[i], i);
                                             


                                           }
                                           showDialog(context: context, 
  
                                                      builder:(context) {
                                                             return AlertDialog(
                                                                    iconPadding: EdgeInsets.only(bottom:0,right: 20),
                                                                    title: Center(child: Text("Successfully Added to Cart",style: TextStyle(fontSize: 15),)),
                                                                    icon: IconButton(onPressed:() {
                                                                       Navigator.of(context).pop();
                                                                           }, icon: Icon(Icons.close,size: 15,),alignment: Alignment.topRight,)
      
                                                                    );

                                                               },
  
  
                                             ); 


                                         }, child: Text("Add to Cart",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w600),)),
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