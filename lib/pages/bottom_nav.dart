import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:shop/pages/home.dart';
import 'package:shop/pages/order.dart';
import 'package:shop/pages/profile.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  late List<Widget> pages;
  int currentTabIndex = 0;

  late Home homePage;
  late Order order;
  late Profile profile;


  //when bottom_nav.dart is called => initState first function to be called
  @override
  void initState() {
    // TODO: implement initState
    homePage = Home();
    order = Order();
    profile = Profile();
    pages = [homePage, order, profile];

    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
          height: 50,
          backgroundColor: Color(0xfff2f2f2),
          color: Colors.black,
          animationDuration: Duration(milliseconds: 300),
          onTap: (int index){
              setState(() {
                currentTabIndex = index;
              });
          },
          items: [
            Icon(Icons.home_outlined, color: Colors.white,),
            Icon(Icons.shopping_bag_outlined, color: Colors.white,),
            Icon(Icons.person_outlined, color: Colors.white,)
          ]
      ),
      body: pages[currentTabIndex],
    );
  }
}
