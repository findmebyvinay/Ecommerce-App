import 'package:flutter/material.dart';
class Shoppingpage extends StatelessWidget {
  const Shoppingpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
   children: [
          Container(
            padding:EdgeInsets.all(8),
            margin:EdgeInsets.all(20),
            
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
              
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Center(child: Text("Search")),
                Icon(Icons.search),
              ],
            ),
          ),
          Text("Hot Picks 🔥"),
         
        ],
    );
  }
}