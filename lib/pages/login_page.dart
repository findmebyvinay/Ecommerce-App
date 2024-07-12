import 'package:ecommerce_app/pages/cart_page.dart';
import 'package:flutter/material.dart';
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Container(
            width: 400,
            height: 450,
            decoration: BoxDecoration(
              color: Colors.grey[100],
              border: Border.all(),
              borderRadius:BorderRadius.circular(8)
            ),
            child: Column(
              children: [
                Icon(Icons.lock,color: Colors.black,
                size: 40,),
        
                const SizedBox(height: 10,),
        
                TextFormField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    label:Icon(Icons.email),
        //prefixIcon:Icon(Icons.email_sharp),
                    hintText:"Username",
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black
                      )
                    )
                  ),
                ),
                const SizedBox(height: 20,),
                TextFormField(
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
        
                const SizedBox(height: 20,),
                Row(mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                      Text("Forgot Password ?",
                      style: TextStyle(
                        color: Colors.blueAccent,
                        fontWeight: FontWeight.bold
                      ),)
                  ],
                ),
        
                const SizedBox(height: 30,),
        
              ElevatedButton(onPressed:(){
  Navigator.pop(context);
              },
               child:Text("Login"))
        
              ],
            ),
          ),
        ),
    );
  }
}