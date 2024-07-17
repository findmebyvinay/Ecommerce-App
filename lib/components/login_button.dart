import 'package:ecommerce_app/pages/cart_page.dart';
import 'package:ecommerce_app/pages/register.dart';
import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget { 
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder:(context)=>CartPage() ));
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.yellowAccent,
          borderRadius:BorderRadius.circular(10)
        ),
        height: 50,
        width: 200,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Login',style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20
            ),)
          ],
        ),
      ),
    );
  }
}