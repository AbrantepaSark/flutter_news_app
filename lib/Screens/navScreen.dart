// ignore_for_file: file_names

import 'package:flutter/material.dart';
//import 'package:flutter_svg/flutter_svg.dart';

import './homeScreen.dart';
import './searchScreen.dart';
import './categoryScreen.dart';

class NavScreen extends StatefulWidget {
  static const routeName = '/nav';

  const NavScreen({Key? key}) : super(key: key);
  @override
  _NavScreenState createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  List _pages = [];

  int _selectedPageIndex = 0;

  @override
  void initState() {
    _pages = const [HomeScreen(), SearchPage(), CategoryScreen()];
    super.initState();
  }

  void _pageHandler(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   leading: const Icon(Icons.developer_mode),
      //   title: const Text(
      //     'Dev-Connect',
      //     style: TextStyle(fontFamily: 'Bellota'),
      //   ),
      //   centerTitle: true,
      //   backgroundColor: const Color(0xF200008B),
      // ),
      body: _pages[_selectedPageIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: _pageHandler,
        unselectedItemColor: Color.fromARGB(255, 223, 151, 123),
        selectedItemColor: Color.fromARGB(255, 184, 11, 11),
        // showSelectedLabels: false,
        // showUnselectedLabels: false,
        selectedFontSize: 12,
        currentIndex: _selectedPageIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_rounded, size: 28),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search_outlined, size: 28),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.sort, size: 28),
            label: 'Category',
          ),
        ],
      ),
    );
  }
}
