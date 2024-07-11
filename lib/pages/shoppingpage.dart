import 'package:ecommerce_app/models/shoe.dart';
import 'package:flutter/material.dart';

import '../components/shoetile.dart';
class Shoppingpage extends StatelessWidget {
  const Shoppingpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
       
         children: [
            Container(
              
              width: 400,
              height: 500,
              padding:EdgeInsets.all(8),
              margin:EdgeInsets.all(20),
              
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(8),

                
              ),
              child:/* Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Center(child: Text("Search")),
                  Icon(Icons.search),
                ],
              ),
            ),
            Text("Hot Picks 🔥"),
      
            const SizedBox(height: 10,),*/
            
             
            Expanded(
              child:ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                itemBuilder: (context,index){
                Shoe shoe= Shoe(name: "Kyrie infinity",
                 description:"Light weight Basketball Shoe",
                  price:"£300",
                   imagePath:"lib/images/kyrie.jpeg");
                return ShoeTile(
                  shoe: shoe,
                );
              }) )
            )
          ],
          
      ),
    );
  }
}