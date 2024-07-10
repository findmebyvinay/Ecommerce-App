import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyButton extends StatelessWidget {
  void Function(int)? onTabChange;
   MyButton({super.key,required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GNav(
        mainAxisAlignment: MainAxisAlignment.center,
        color: Colors.white,
        activeColor: Colors.black,
        tabBorderRadius: 1,
        onTabChange:(value)=>onTabChange!(value),
        tabs: [
      
       GButton(icon: Icons.home,
       text: "Shop",),
       GButton(
        icon:Icons.shopping_bag_rounded,
        text: "Cart", 
       ) 
      ]),
    );
  }
}