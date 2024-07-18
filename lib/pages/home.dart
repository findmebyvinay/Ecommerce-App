import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown,
      body: Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Center(child: Text('this about home page'))
          ],
        )
      ),
    );
  }
}