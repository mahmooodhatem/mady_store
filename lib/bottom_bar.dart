import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:untitled6/about.dart';
import 'package:untitled6/app_developers.dart';
import 'package:untitled6/category_page.dart';
import 'package:untitled6/profile_page.dart';

import 'home_page.dart';


class HomeLayout extends StatefulWidget {
  const HomeLayout({super.key});



  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {


  int currentIndex = 0;
  List pages = [
    const HomePage(),
    const ProfilePage(),
      const CategoryPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("MADY STORE",
        style: TextStyle(
          color: Colors.deepPurple,
          fontWeight: FontWeight.bold
        ),
        ),
        actions: [
          IconButton(onPressed: (){
            setState(() {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> const AboutApp()));
            });
          }, icon: const FaIcon(FontAwesomeIcons.info),
          color: Colors.black26,
          ),
          IconButton(onPressed: (){
            setState(() {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> const AppDevelopers()));
            });
          }, icon: const FaIcon(FontAwesomeIcons.person),
          color: Colors.black26,
          ),
        ],
      ),
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (value){
          setState(() {
            currentIndex = value;
          });
        },
        items: const [
          BottomNavigationBarItem(
              label: "HOME",
              icon: Icon(Icons.home)
          ),
          BottomNavigationBarItem(
              label: "MY PROFILE",
              icon: Icon(Icons.person)
          ),
          BottomNavigationBarItem(
              label: "CATEGORY",
              icon: Icon(Icons.category)
          ),
        ],
      ),
    );
  }
}