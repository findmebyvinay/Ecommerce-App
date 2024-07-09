import 'package:ecommerce_app/components/bottom_nav.dart';
import 'package:flutter/material.dart';

import 'cart_page.dart';
import 'shoppingpage.dart';
class Shoppage extends StatefulWidget {
  const Shoppage({super.key});

  @override
  State<Shoppage> createState() => _ShoppageState();
}

class _ShoppageState extends State<Shoppage> {
  @override
  int _selectedindex= 0;

  void navigationButtom(int index){
    setState(() {
      _selectedindex=index;
    });

  }

  final List<Widget> _pages=[
    const Shoppingpage(),

    const CartPage()
  ];
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        leading:Builder(
          builder: (context) {
            return IconButton(onPressed:(){
              Scaffold.of(context).openDrawer();
            }, 
            icon:Icon(Icons.menu));
          }
        ),
        elevation: 0,
        centerTitle:true,
        title:Text("Sneaker Shop",
        ),
        backgroundColor: Colors.transparent,
        
      ),
      drawer: Drawer(
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: [
           _pages[_selectedindex]
           
        ],
      ),
      bottomNavigationBar:MyButton(
        onTabChange: (index)=>
          navigationButtom(index),
      ) ,
    );
  }
}