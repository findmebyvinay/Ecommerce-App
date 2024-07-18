import 'package:ecommerce_app/models/shoe.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../components/shoetile.dart';
import '../models/cart.dart';
class Shoppingpage extends StatelessWidget {
  const Shoppingpage({super.key});

  @override
  Widget build(BuildContext context) {
    void addShoeToCart(Shoe shoe){
      Provider.of<Cart>(context).addItemToCart(shoe);

      showDialog(context:context,builder:(context)=>AlertDialog(
        title: Text("added successfully to your Cart!"),
        content: Text("cart updated"),
      )
      );
    }
    return Consumer<Cart>(
      builder: (BuildContext context, value, Widget? child)=>
      Center(
        child: Column(
           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
           children: [
          
              Container(
                
                width: 800,
               height: 450,
                padding:EdgeInsets.all(8),
                margin:EdgeInsets.all(20),
                
                decoration: BoxDecoration(
                  color: Colors.grey[300],
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
                child:Container(
                  height: 300,
                  width: 400,
                  child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: 4,
                    itemBuilder: (context,index){
                    Shoe shoe= value.getShoeList() [index];
                    return
                      ShoeTile(shoe: shoe,
                      onTap:()=>addShoeToCart(shoe),);
                  }),
                ) )
              )
            ],
            
        ),
      ),
    );
  }
}