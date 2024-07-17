import 'package:ecommerce_app/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/cart.dart';
import '../models/cart_item.dart';
import '../models/shoe.dart';
class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(builder: (context,value,child)=>Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 25.0
      ),
      child: Column(
     //   mainAxisAlignment: MainAxisAlignment.center,
        children: [
        const  Text("MY CART",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold
          ),),
      
        const SizedBox(height: 20,),
        Center(
          child: Container(
            color: Colors.white,
           // height: 350,
           // width: 450,
            child:ElevatedButton(
            
              onPressed: ()=>{
              
              Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()))
            }, child:Text("Please Login first",style: TextStyle(
              color: Colors.black
            ),))
            /* ListView.builder(
               itemCount: value.getUserCart().length,
              itemBuilder: (context,index){
              Shoe selectedShoe =value.getUserCart()[index];
              return CartItem(shoe: selectedShoe);
            }),*/
          ),
        )
       /* Container(
          width: 500,
          height: 400,
//color: Colors.black,
          child: Expanded(child: ListView.builder(
            itemCount: value.getUserCart().length,
            itemBuilder: (context,index){
            Shoe selectedShoe =value.getUserCart()[index];
            return CartItem(shoe: selectedShoe);
          })),
        )*/
      
        ],
      ),
    ));
  }
}