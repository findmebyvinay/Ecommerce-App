
import 'package:flutter/material.dart';

import 'shop_page.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
     body: Column(
      children: [
        Image.asset('lib/images/nike.png',height:550,width:1000,),
      const  Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           Text("A Platform For All Basketball Sneaker Head !",
            style:TextStyle(
              fontSize: 14,
              color: Colors.black,
              fontStyle: FontStyle.italic
              
            ) ,),
         
          ],
        ),
        const SizedBox(height: 20,),
        ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Shoppage()));
            }, child:const Text("Shop Now",
            style: TextStyle(
           color: Colors.black
            ),))
      ],
     ),
    );
  }
}