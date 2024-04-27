import 'dart:async';

import 'package:donutapp/homepage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool passwordVisible = false;
  bool checkpassword=false;
  bool recheckpassword=false;
  final email=TextEditingController();
  final password=TextEditingController();

  final getemail=TextEditingController();
  final getpassword=TextEditingController();
  final confirmpassword=TextEditingController();



Future  singup() async{

if(passwordcheck()){
  
try {
    await FirebaseAuth.instance.createUserWithEmailAndPassword(
    email: getemail.text.trim(), 
    password: getpassword.text.trim(),

      );

      showDialog(context: context, 
  
  builder:(context) {
      return AlertDialog(
      iconPadding: EdgeInsets.only(bottom:0,right: 20),
      title: Center(child: Text("Account created succesfully !",style: TextStyle(fontSize: 15),)),
      icon: IconButton(onPressed:() {
      Navigator.of(context).pop();
      }, icon: Icon(Icons.close,size: 15,),alignment: Alignment.topRight,)
      
     );

  },
  
  
  );
Navigator.of(context).push(MaterialPageRoute(builder:(context) {
  return homepage();
},));
      


} on FirebaseAuthException catch(e) {
     
  showDialog(context: context, 
  
  builder:(context) {
    return AlertDialog(
      iconPadding: EdgeInsets.only(bottom:0,right: 20),
      title: Center(child: Text("${e.message}",style: TextStyle(fontSize: 15),)),
      icon: IconButton(onPressed:() {
      Navigator.of(context).pop();
      }, icon: Icon(Icons.close,size: 15,),alignment: Alignment.topRight,)
      
     );

  },
  
  
  );
}


}else{
  showDialog(
    
    context: context, 
  
  builder:(context) {
    return AlertDialog(
      iconPadding: EdgeInsets.only(bottom:0,right: 20),
      title: Center(child: Text("Password dosen't match!",style: TextStyle(fontSize: 15),)),
      icon: IconButton(onPressed:() {
      Navigator.of(context).pop();
      }, icon: Icon(Icons.close,size: 15,),alignment: Alignment.topRight,)
      
     );

  },
  
  
  );
}

}

bool passwordcheck() {

 if(getpassword.text.trim()==confirmpassword.text.trim()){

   return true;
  
 } else{

   return false;

      
   

 }

  }

  Future singin() async{

    try {
  await FirebaseAuth.instance.signInWithEmailAndPassword
(
email: email.text.trim(), 

password: password.text.trim()

);
Navigator.of(context).push(MaterialPageRoute(builder:(context) {
  return homepage();
},));
      
    }on FirebaseAuthException catch (e) {
      
 showDialog(context: context, 
  
  builder:(context) {
    return AlertDialog(
      iconPadding: EdgeInsets.only(bottom:0,right: 20),
      title: Center(child: Text("Invalid Email or Password!\nTry again",style: TextStyle(fontSize: 15),)),
      icon: IconButton(onPressed:() {
      Navigator.of(context).pop();
      }, icon: Icon(Icons.close,size: 15,),alignment: Alignment.topRight,)
      
     );

  },
  
  
  );

      
    }


  }
    



  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFF6F2),
        body: SingleChildScrollView(
          child: Stack(
            
            children : [ 

                            
              Container(
                height: 290,
                width: double.infinity,
                decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("sourcess/Maskgroup.png"),fit: BoxFit.fill)
                ),
              ),
              Container(
                height: 290,
                width: double.infinity,
                decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("sourcess/newbackgroound.png"),fit: BoxFit.fill)
                ),
              ),
              
              
              Padding(
              padding: const EdgeInsets.only(top: 70),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                            Container(
                    height: 45,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("sourcess/sweetwheellogo1.png"),
                      ),
                    ),
                  ),
                  // Top logo image
                  Container(
                    height: 112,
                    width: 164,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("sourcess/Rectangledonut.png"),fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  // Form container
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50),
                    child: Container(
                      height: 400,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: DefaultTabController(
                        length: 2,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            // Tab bar for Sign In and Sign Up
                            TabBar(
                              tabs: [
                                Tab(text: "Sign In"),
                                Tab(text: "Sign Up"),
                              ],
                            ),
                            Expanded(
                              child: TabBarView(
                                children: [
                                  // Sign In tab
                                  Padding(
                                    padding: const EdgeInsets.only(left: 40,right: 45,top: 16,bottom: 16),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        TextField(
                                          controller: email,
                                          keyboardType: TextInputType.emailAddress,
                                          decoration: InputDecoration(
                                            hintText: "Email",
                                            hintStyle: TextStyle(fontSize: 12,color: Color.fromARGB(255, 175, 174, 174)),
                                            focusedBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(color: Colors.black),
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: 5),
                                        TextField(
                                          controller: password,
                                          obscureText: !passwordVisible,
                                          decoration: InputDecoration(
                                            hintText: "Password",
                                              hintStyle: TextStyle(fontSize: 12,color: Color.fromARGB(255, 175, 174, 174)),
                                              focusedBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(color: Colors.black),
                                            ),
                                            suffixIcon: IconButton(
                                              icon: Icon(
                                                passwordVisible ? Icons.visibility_off : Icons.visibility,
                                              size: 12,),
                                              onPressed: () {
                                                setState(() {
                                                  passwordVisible = !passwordVisible;
                                                });
                                              },
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: 77),
                                        ElevatedButton(
                                          onPressed: () {
                                             singin();                                     
                                          },
                                          style: ElevatedButton.styleFrom(
                             fixedSize: Size(225, 44),
                                            backgroundColor: Color(0xFFFF9666),
                                            
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(57),
                                            ),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                              vertical: 8,
                                              horizontal: 35,
                                            ),
                                            child: Text(
                                              "Sign In",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 15,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  // Sign Up tab (you can add your own sign-up form here)
                         Padding(
                                    padding: const EdgeInsets.only(left: 40,right: 45,top: 16,bottom: 16),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        TextField(
                                          controller: getemail,
                                          keyboardType: TextInputType.emailAddress,
                                          decoration: InputDecoration(
                                            hintText: "Enter Email",
                                            hintStyle: TextStyle(fontSize: 12,color: Color.fromARGB(255, 175, 174, 174)),
                                            focusedBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(color: Colors.black),
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: 5),
                                        TextField(
                                          controller: getpassword,
                                          obscureText: !checkpassword,
                                          decoration: InputDecoration(
                                            hintText: "Enter Password",
                                            hintStyle: TextStyle(fontSize: 12,color: Color.fromARGB(255, 175, 174, 174)),
                                            focusedBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(color: Colors.black),
                                            ),
                                            suffixIcon: IconButton(
                                              icon: Icon(
                                                checkpassword ? Icons.visibility : Icons.visibility_off,
                                             size: 12, ),
                                              onPressed: () {
                                                setState(() {
                                                  checkpassword = !checkpassword;
                                                });
                                              },
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: 16,),
                                        TextField(
                                          controller: confirmpassword,
                                          obscureText: !recheckpassword,
                                          decoration: InputDecoration(
                                            hintText: "Re Enter Password",
                                            hintStyle: TextStyle(fontSize: 12,color: Color.fromARGB(255, 175, 174, 174)),
                                            focusedBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(color: Color.fromARGB(255, 0, 0, 0)),
                                            ),
                                            suffixIcon: IconButton(
                                              icon: Icon(
                                                recheckpassword ? Icons.visibility : Icons.visibility_off,
                                              size: 12,),
                                              onPressed: () {
                                                setState(() {
                                                  recheckpassword = !recheckpassword;
                                                });
                                              },
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: 12),
                                        ElevatedButton(
                                          onPressed: () {
                                            print(email.text);
                                            singup();
                                            // Handle sign-in button press here
                                          },
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: Color(0xFFFF9666),
                                            fixedSize: Size(225, 44),

                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(57),
                                            ),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                              vertical: 8,
                                              horizontal: 35,
                                            ),
                                            child: Text(
                                              "Sign up",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 15,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 132,
                                child: Divider(
                                color: Colors.grey,
                                  height: 2,
                                  thickness: 2,
                                  indent: 18,
                                  endIndent: 8,
                          
                                ),
                              ),
                              Text("OR",style: TextStyle(fontSize: 8),),
                              Container(
                                width: 132,
                                child: Divider(
                                color: Colors.grey,
                                  height: 2,
                                  thickness: 2,
                                  indent: 8,
                                  endIndent: 18,
                          
                                ),
                              ),
            
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 25,bottom: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                   Container(
                                    height: 38,
                                    width: 45,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(image: AssetImage("sourcess/facebook.png"),fit: BoxFit.contain)
                                    ),
                                   ),
                                   Container(
                                    height: 28,
                                    width: 45,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(image:AssetImage("sourcess/google.png"),fit: BoxFit.contain)
                                    ),
                                   )   
                              ],
                            ),
                          )
            
            
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 150,
                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage("sourcess/donuts.png"),fit: BoxFit.contain,alignment: Alignment.bottomRight)
                    ),
                  )
                ],
              ),
            ),
            ]
          ),
        ),
      ),
    );
  }
}
