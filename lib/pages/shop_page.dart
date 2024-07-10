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
        backgroundColor: Colors.transparent,
        
      ),
      drawer: Drawer(
        backgroundColor: Colors.black,
        child: Column(
          children: [
            DrawerHeader(child: Image.asset('lib/images/logo.jpeg')),
           const Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Divider(height:80,),
            ),
           const ListTile(
              leading:Icon(Icons.home,color: Colors.white,),
              title: Text("Home",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold
              ),),
            ),
            const SizedBox(height:20,),
             const ListTile(
              leading:Icon(Icons.info,color: Colors.white,),
              title: Text("About Us",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold
              ),),
            ),
          ],
        ),
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