import 'package:donutapp/model.dart';
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
                  height: 500,
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
                                    leading: Container(
                                      height: 50,
                                      width: 50,
                                      decoration: BoxDecoration(
                                       
                                        image: DecorationImage(image: AssetImage(value.cartitems[index][0]),fit: BoxFit.contain)
                                      ),
                                    ),
                                    title: Text(value.cartitems[index][1],style: TextStyle(color: Colors.black
                                    ,fontSize: 15),),
                                    subtitle: Text(value.cartitems[index][2],style: TextStyle(color: Colors.black,fontSize: 10),),

                                    trailing: IconButton(onPressed:() {
                                      Provider.of<cartmodel>(context,listen: false).removeitem(index);
                                    }, icon: Icon(Icons.delete,size: 17,color: Colors.black,)),
                                   ),
                      ),
                    );


                    },
                    
                    
                    
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