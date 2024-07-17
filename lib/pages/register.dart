import 'package:ecommerce_app/pages/login_page.dart';
import 'package:flutter/material.dart';

import '../components/login_button.dart';
class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey[200]
            ),
            height: 500,
            width: 500,
            child: Column(
              children: [
                const SizedBox(height: 40,),
                Icon(Icons.lock,color: Colors.black,
                size: 50,),
                    
                const SizedBox(height: 10,),
                    
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal:30),
                  
                  child: TextFormField(
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      label:Icon(Icons.email),
                      //prefixIcon:Icon(Icons.email_sharp),
                      hintText:"Username",
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color:   Colors.black
                        )
                      )
                    ),
                  ),
                ),
                const SizedBox(height: 30,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal:30),
                  child: TextFormField(
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      label:Icon(Icons.key),
                      //prefixIcon:Icon(Icons.email_sharp),
                      hintText:"password",
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black
                        )
                      )
                    ),
                  ),
                ),
                     const SizedBox(height: 30,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal:30),
                  child: TextFormField(
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      label:Icon(Icons.key),
                      //prefixIcon:Icon(Icons.email_sharp),
                      hintText:"confirm password",
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black
                        )
                      )
                    ),
                  ),
                ),
                    
                const SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                        Text("Forgot Password ?",
                        style: TextStyle(
                          color: Colors.blueAccent,
                          fontWeight: FontWeight.bold
                        ),)
                    ],
                  ),
                ),
                    
                const SizedBox(height: 30,),
                    
                LoginButton(),
            
               const SizedBox(height: 30,),
            
               Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 20),
                 child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                     Text("Already Have an Account ?",style: TextStyle(
                      fontWeight: FontWeight.bold
                     ),),
                     const SizedBox(width: 5,),
                     GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
                      } ,
                       child: Text("Login Now !",style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blueAccent[100]
                       ),),
                     )
                  ],
                 ),
               )
                    
              ],
            ),
          ),
        ),
    );
  }
}