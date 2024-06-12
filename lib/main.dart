// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:stor_app/pages/detalis_page.dart';
import 'package:stor_app/pages/home_page.dart';
import 'package:stor_app/pages/navigation_pages.dart';
import 'package:stor_app/res/app_string.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int selectedPage = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:
      
      Scaffold(
        body: pages.elementAt(selectedPage),
        bottomNavigationBar: NavigationBar(
          selectedIndex: selectedPage,
          elevation: 0.0,
          backgroundColor: Colors.white,
          onDestinationSelected: (value) {
            setState(() {
              selectedPage = value;
            });
          },
          destinations: [
            NavigationDestination(
              selectedIcon: const Icon(Icons.notifications_on),
              icon: const Icon(Icons.notifications_on_outlined),
              label: NOTIFICATION,
            ),
            NavigationDestination(
              icon: const Icon(Icons.favorite_outline),
              selectedIcon: const Icon(Icons.favorite),
              label: FAVOURITE,
            ),
            NavigationDestination(
                icon: const Icon(Icons.home_outlined),
                selectedIcon: const Icon(Icons.home),
                label: HOME),
            NavigationDestination(
                icon: const Icon(Icons.shopping_cart_outlined),
                selectedIcon: const Icon(Icons.shopping_cart),
                label: CHART),
            NavigationDestination(
                icon: Icon(Icons.person_outline),
                selectedIcon: const Icon(Icons.person),
                label: PROFILE),
          ],
        ),
      ),
    );
  }
}
