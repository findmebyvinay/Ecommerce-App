import 'package:ecommerce_app/models/shoe.dart';
import 'package:flutter/material.dart';
class ShoeTile extends StatelessWidget {
  void Function()? onTap;
  Shoe shoe;
   ShoeTile({super.key,required this.shoe,required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left:15),
   //  height: 200,
      width: 250,
      decoration: BoxDecoration(
        color: Colors.grey,
         borderRadius: BorderRadius.circular(12)
      ),
      child: Column(
      //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisAlignment: MainAxisAlignment.end,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(shoe.imagePath)),


          Text(shoe.description),

          const SizedBox(height: 10,),
          Row(
     // mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
             //   mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(shoe.name),
                  
              Text(shoe.price)
                ],
              ),
              
            ],
          ),
          GestureDetector (
            
            onTap:onTap,
            child: Container(
              
            //height: 470,
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(20),
              
              child:Icon(Icons.add,color: Colors.white,),
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(8),bottomRight: Radius.circular(12))
              ),
            ),
          )

        ],
      ),
    );
  }
}