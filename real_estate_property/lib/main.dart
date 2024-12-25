import 'package:flutter/material.dart';
import 'package:real_estate_property/presentation/pages/home_screen.dart';
import 'package:real_estate_property/presentation/pages/main_screen.dart';
import 'package:real_estate_property/presentation/pages/detail_product_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Real Estate App',
      debugShowCheckedModeBanner: false,
      home: MainApp(),
      theme: ThemeData(primarySwatch: Colors.blue,),
    );
  }
}

class MainApp extends StatefulWidget {
  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    HomeScreen(),
    DetailProductScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (context) {
            return IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
      ),
      drawer: MainScreen(
        onItemSelected: (index) {
          setState(() {
            _currentIndex = index;
          });
          Navigator.pop(context); // Close the drawer
        },
      ),
      body: _screens[_currentIndex],
    );
  }
}