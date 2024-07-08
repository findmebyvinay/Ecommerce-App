import 'package:flutter/material.dart';
class Shoppage extends StatelessWidget {
  const Shoppage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ElevatedButton(onPressed: (){
            Navigator.pop(context);
          }, child:Icon(Icons.arrow_back))
        ],
      ),
    );
  }
}