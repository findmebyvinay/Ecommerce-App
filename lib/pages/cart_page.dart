import 'package:ecommerce_app/pages/login_page.dart';
import 'package:flutter/material.dart';
class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
       child: Expanded(
         child: Column(
          children: [
            Text("Please Login first"),
          ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginPage()));
            }, child:Text("GO TO LOGIN"))
          ],
         ),
       ),
      ),
    );
  }
}