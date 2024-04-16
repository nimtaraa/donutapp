import 'package:donutapp/homepage.dart';
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
    




  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 230, 238),
        body: SingleChildScrollView(
          child: Stack(
            
            children : [ 
              
              Container(
                height: 290,
                width: double.infinity,
                decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("sourcess/background.png"),fit: BoxFit.fill)
                ),
              ),
              
              
              Padding(
              padding: const EdgeInsets.only(top: 45),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                            Container(
                    height: 30,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("sourcess/sweetwheel (4).png"),
                      ),
                    ),
                  ),
                  // Top logo image
                  Container(
                    height: 100,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("sourcess/sweetwheel2 (1).png"),
                      ),
                    ),
                  ),
                  // Form container
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 25),
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
                                    padding: const EdgeInsets.all(16),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        TextField(
                                          controller: email,
                                          keyboardType: TextInputType.emailAddress,
                                          decoration: InputDecoration(
                                            hintText: "Email",
                                            hintStyle: TextStyle(fontSize: 12),
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
                                                      hintStyle: TextStyle(fontSize: 12),
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
Navigator.of(context).push(MaterialPageRoute(builder:(context) {
  return homepage();
},));                                            // Handle sign-in button press here
                                          },
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: Colors.pink,
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
                                    padding: const EdgeInsets.all(16),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        TextField(
                                          controller: getemail,
                                          keyboardType: TextInputType.emailAddress,
                                          decoration: InputDecoration(
                                            hintText: "Enter Email",
                                            hintStyle: TextStyle(fontSize: 12),
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
                                            hintStyle: TextStyle(fontSize: 12),
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
                                            hintStyle: TextStyle(fontSize: 12),
                                            focusedBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(color: Colors.black),
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
                                            // Handle sign-in button press here
                                          },
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: Colors.pink,
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
                  Padding(
                    padding: const EdgeInsets.only(left: 120),
                    child: Container(
                      height: 150,
                      decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage("sourcess/donuts.png"),fit: BoxFit.contain)
                      ),
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
